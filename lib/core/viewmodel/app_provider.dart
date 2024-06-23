import 'package:flutter/material.dart';
import 'package:nectar/core/service/Auth_service.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/core/viewmodel/filter_viewmodel.dart';
import 'package:nectar/core/viewmodel/location_view_model.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/view/filter/filter_view.dart';
import 'package:nectar/view/home/home_view.dart';
import 'package:nectar/view/home/homeview_model.dart';
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
      ],
        child : child
    );
  }
}
