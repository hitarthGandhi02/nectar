import 'dart:developer';

import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase_auth.dart';

class ProductService {
  Future<List<ProductModel>> getProducts() async {
    final res = await supabase.from('product').select("*, category(*), brand(*)");
    return res.map((e) => ProductModel.fromMap(e)).toList();
  }
  
}