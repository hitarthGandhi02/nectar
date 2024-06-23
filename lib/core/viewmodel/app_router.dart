import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
   AutoRoute(page: BottomNavigation.page,
   path: "/",
  children: <AutoRoute> [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: ExploreRoute.page),
    AutoRoute(page: FavoriteRoute.page),
    AutoRoute(page: LocationRoute.page),
    AutoRoute(page: AccountRoute.page),
    AutoRoute(page: HomeRoute.page)
   ]),
   AutoRoute(page: PhoneRoute.page),
   AutoRoute(page: OtpRoute.page),
   AutoRoute(page: ProductRoute.page),
   AutoRoute(page: CategoryItems.page),
   AutoRoute(page: FilterRoute.page),
   AutoRoute(page: ProductSearchRoute.page),
   
  ];
}