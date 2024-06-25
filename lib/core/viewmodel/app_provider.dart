import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/core/viewmodel/filter_viewmodel.dart';
import 'package:nectar/core/viewmodel/location_view_model.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/view/category_items/category_view_model.dart';
import 'package:nectar/view/favorite/favorite_view_model.dart';
import 'package:nectar/view/home/homeview_model.dart';
import 'package:nectar/view/product/product_viewmodel.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
          create: (_) => CartProvider(), 
        ),
                ChangeNotifierProvider<LoginViewModel>(
          create: (_) => LoginViewModel(), 
        ),
        ChangeNotifierProvider<LocationViewModel>(
          create: (_) => LocationViewModel(), 
        ),
        ChangeNotifierProvider<FilterViewmodel>(
          create: (_) => FilterViewmodel(), 
        ),
        ChangeNotifierProvider<HomeViewModel>(
          create: (_) => HomeViewModel(), 
        ),
        ChangeNotifierProvider<CategoryViewModel>(
          create: (_) => CategoryViewModel(), 
        ),
         ChangeNotifierProvider<FavoriteViewModel>(
          create: (_) => FavoriteViewModel(), 
        ),
         ChangeNotifierProvider<ProductViewmodel>(
          create: (_) => ProductViewmodel(), 
        ),
      ],
        child : child
    );
  }
}
