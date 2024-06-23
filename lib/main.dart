import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_provider.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
    await Supabase. initialize(
    url: 'https://waqzjygagvreulnpomck.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndhcXpqeWdhZ3ZyZXVsbnBvbWNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNTcwMjUsImV4cCI6MjAzMzgzMzAyNX0.VZbpMBKvdrGFNZGVDbc55tcOeRv0WzqSpxMBpi9bKKA',
  );
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = locator<AppRouter>();

  @override

  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              color: Color(0xff181725),
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy'
            ),
            titleLarge: TextStyle(
              color: Color(0xff181725),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy'
            ),
            titleSmall: const TextStyle(
              color: Color(0xdd7C7C7C),
              fontFamily: 'Gilroy',
              fontSize: 15,
              fontWeight: FontWeight.normal
            )
          ),
          primaryColor: const Color(0xcc53B175),
          scaffoldBackgroundColor: Color(0xffFEFEFE)
        ),

        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
