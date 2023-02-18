import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance =
      AppController(); //Singleton, vamos usar a mesma instancia para todo projeto

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners(); //Notifica quem estiver escutando
  }
}
