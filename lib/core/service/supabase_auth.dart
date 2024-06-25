import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class SupabaseAuth {
  Future<String?> getUserId() async {
    final user = supabase.auth.currentUser;
    print(user?.id);
    return user?.id;
  }
}
