import 'package:doc2/controllers/AppController.dart';
import 'package:doc2/pages/home_page.dart';
import 'package:doc2/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            home: LoginPage(),
            theme: ThemeData(
              primarySwatch: Colors.grey,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.light
                  : Brightness.dark,
            ));
      },
    );
  }
}
