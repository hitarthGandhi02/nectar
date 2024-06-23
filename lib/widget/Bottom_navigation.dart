import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';

@RoutePage()
class BottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: [
        HomeRoute(),
        ExploreRoute(),
        CartRoute(),
        FavoriteRoute(),
        AccountRoute()
      ],
      transitionBuilder: (context,child,animation) => FadeTransition(
            opacity: animation,
            // the passed child is technically our animated selected-tab page
            child: child,
          ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: 'Shop', icon: SvgPicture.asset("assets/images/shop-icon.svg")),
              BottomNavigationBarItem(label: 'Explore', icon: SvgPicture.asset("assets/images/explore-icon.svg")),
              BottomNavigationBarItem(label: 'Cart', icon: SvgPicture.asset("assets/images/cart-icon.svg")),
              BottomNavigationBarItem(label: 'Favorite', icon: SvgPicture.asset("assets/images/favorite-icon.svg")),
              BottomNavigationBarItem(label: 'Account', icon: SvgPicture.asset("assets/images/account-icon.svg")),
            ],
          ),
        );
      },
    );
  }
}