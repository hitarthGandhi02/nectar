import 'package:nectar/core/service/supabase_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseImage {
  String getImages (String path) {
    final URL = supabase.storage.from("images").getPublicUrl(path);
    return URL;
  } 
}