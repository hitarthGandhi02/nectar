import 'package:flutter/material.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/Supabase/category_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';

class CategoryViewModel extends ChangeNotifier{

  List<CategoryModel> _category = [];
  List<CategoryModel> get category => _category;

  CategoryViewModel(){
    getCategory();
  }

   final _categoryService = locator<CategoryService>();
   void getCategory() async{
      try{
        _category = await _categoryService.getCategory();
        print(" this is category data : $_category");
      }catch(e){
        throw (e);
      }
      notifyListeners();
   }

}