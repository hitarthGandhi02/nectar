import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/Supabase/favorite_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';

class FavoriteViewModel extends ChangeNotifier{

  List<ProductModel> _favorite = [];
  List<ProductModel> get favorite => _favorite;

  FavoriteViewModel(){
    getFavorite();
  }

   final _favoriteService = locator<FavoriteService>();
   Future<void> getFavorite() async{
      try{
        _favorite = await _favoriteService.getFavorite();
        print(" this is favorite data : $favorite");
      }catch(e){
        throw (e);
      }
      notifyListeners();
   }
    void cardClicked () {
    }
}