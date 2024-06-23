// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:nectar/view/account/account_view.dart' as _i1;
import 'package:nectar/view/cart/cart_view.dart' as _i3;
import 'package:nectar/view/category_items/category_items.dart' as _i4;
import 'package:nectar/view/Explore/explore_view.dart' as _i5;
import 'package:nectar/view/favorite/favorite_view.dart' as _i6;
import 'package:nectar/view/filter/filter_view.dart' as _i7;
import 'package:nectar/view/home/home_view.dart' as _i8;
import 'package:nectar/view/login/location_view.dart' as _i9;
import 'package:nectar/view/login/login_view.dart' as _i10;
import 'package:nectar/view/login/otp_view.dart' as _i12;
import 'package:nectar/view/login/phone_view.dart' as _i13;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i11;
import 'package:nectar/view/product/product_view.dart' as _i15;
import 'package:nectar/view/product_search/product_search.dart' as _i14;
import 'package:nectar/widget/Bottom_navigation.dart' as _i2;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountView(),
      );
    },
    BottomNavigation.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BottomNavigation(),
      );
    },
    CartRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CartView(),
      );
    },
    CategoryItems.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryItems(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ExploreView(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavoriteView(),
      );
    },
    FilterRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FilterView(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.HomeView(key: args.key),
      );
    },
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LocationView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnboardingView(),
      );
    },
    OtpRoute.name: (routeData) {
      final args =
          routeData.argsAs<OtpRouteArgs>(orElse: () => const OtpRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.OtpView(key: args.key),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PhoneView(key: args.key),
      );
    },
    ProductSearchRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProductSearchView(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ProductView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountView]
class AccountRoute extends _i16.PageRouteInfo<void> {
  const AccountRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigation]
class BottomNavigation extends _i16.PageRouteInfo<void> {
  const BottomNavigation({List<_i16.PageRouteInfo>? children})
      : super(
          BottomNavigation.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigation';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CartView]
class CartRoute extends _i16.PageRouteInfo<void> {
  const CartRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryItems]
class CategoryItems extends _i16.PageRouteInfo<void> {
  const CategoryItems({List<_i16.PageRouteInfo>? children})
      : super(
          CategoryItems.name,
          initialChildren: children,
        );

  static const String name = 'CategoryItems';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ExploreView]
class ExploreRoute extends _i16.PageRouteInfo<void> {
  const ExploreRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FavoriteView]
class FavoriteRoute extends _i16.PageRouteInfo<void> {
  const FavoriteRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FilterView]
class FilterRoute extends _i16.PageRouteInfo<void> {
  const FilterRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeView]
class HomeRoute extends _i16.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<HomeRouteArgs> page =
      _i16.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.LocationView]
class LocationRoute extends _i16.PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i16.PageInfo<LocationRouteArgs> page =
      _i16.PageInfo<LocationRouteArgs>(name);
}

class LocationRouteArgs {
  const LocationRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.LoginView]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnboardingView]
class OnboardingRoute extends _i16.PageRouteInfo<void> {
  const OnboardingRoute({List<_i16.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OtpView]
class OtpRoute extends _i16.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i16.PageInfo<OtpRouteArgs> page =
      _i16.PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.PhoneView]
class PhoneRoute extends _i16.PageRouteInfo<PhoneRouteArgs> {
  PhoneRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          PhoneRoute.name,
          args: PhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const _i16.PageInfo<PhoneRouteArgs> page =
      _i16.PageInfo<PhoneRouteArgs>(name);
}

class PhoneRouteArgs {
  const PhoneRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'PhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.ProductSearchView]
class ProductSearchRoute extends _i16.PageRouteInfo<void> {
  const ProductSearchRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProductSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ProductView]
class ProductRoute extends _i16.PageRouteInfo<void> {
  const ProductRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
