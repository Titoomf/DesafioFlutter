import 'package:flutter/material.dart';
import 'package:spotify/app_controller.dart';
import 'package:spotify/tinder_page.dart';

//import 'home_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
            // Aqui acontece outra ação agora com ternario (if(?) e else (:))
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => TinderPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
