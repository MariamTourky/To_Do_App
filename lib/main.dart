import 'package:flutter/material.dart';
import 'package:to_do_app/core/theme/app_theme.dart';
import 'package:to_do_app/layout/home_layout.dart';
import 'package:to_do_app/modules/splash/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
