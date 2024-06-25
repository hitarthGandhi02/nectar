import 'package:get_it/get_it.dart';
import 'package:nectar/core/service/Supabase/category_service.dart';
import 'package:nectar/core/service/Supabase/favorite_service.dart';
import 'package:nectar/core/service/Supabase/product_service.dart';
import 'package:nectar/core/service/Auth_service.dart';
import 'package:nectar/core/service/supabase_image.dart';
import 'package:nectar/core/viewmodel/app_router.dart';

final locator = GetIt.instance;
void setup () {
  locator.registerSingleton<AppRouter>((AppRouter()));
  locator.registerSingleton<AuthService>(AuthService());
  locator.registerSingleton<ProductService>(ProductService());
  locator.registerSingleton<SupabaseImage>(SupabaseImage());
  locator.registerSingleton<CategoryService>(CategoryService());
  locator.registerSingleton<FavoriteService>(FavoriteService());
}