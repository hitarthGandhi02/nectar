import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';

class HomeViewModel extends ChangeNotifier{

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  HomeViewModel(){
    getProducts();
  }

   final _productService = locator<ProductService>();
   void getProducts() async{
      try{
        _products = await _productService.getProducts();
        print(products.toString());
      }catch(e){

        print(e);
      }
      notifyListeners();
   }

}