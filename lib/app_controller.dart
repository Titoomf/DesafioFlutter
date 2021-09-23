import 'package:flutter/widgets.dart';

//Regra de negocio para o tema escuro e claro
class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
