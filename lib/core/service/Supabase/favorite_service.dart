import 'dart:developer';

import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase_auth.dart';

class FavoriteService {
  Future<List<ProductModel>> getFavorite() async {
    try {
      final res = await supabase.from('favorites').select("*, product(*, brand(*), category(*))").eq('user_id', (supabase.auth.currentUser?.id).toString());
      log("this is service favorite" + res.toString());
      return res.map((e) => ProductModel.fromMap(e['product'])).toList();
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }
}
