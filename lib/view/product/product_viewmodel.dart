import 'package:flutter/foundation.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase_auth.dart';

class ProductViewmodel extends ChangeNotifier{
  bool isFavorite = false;
  ProductViewmodel () {
    if(supabase.from('product').select("is_favorite") == true) {
      isFavorite = true;
    }
    else {
      isFavorite = false;
    }
    notifyListeners();
  }

  void productLiked(ProductModel product) async {
    isFavorite = !isFavorite;
    try {
      await supabase.from("favorites").upsert({
        'product_id': product.id,
        'user_id': supabase.auth.currentUser?.id,
        'created_at': DateTime.now().toString()
      });
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
