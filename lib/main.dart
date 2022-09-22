import 'package:flutter/material.dart';
import 'package:productos_app/pages/home_page.dart';
import 'package:productos_app/pages/login_page.dart';
import 'package:productos_app/pages/productos_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos DS02SV-21',
      initialRoute: 'home',
      routes: {
        'login' : (_) => LoginPage(),
        'home' : (_) => HomePage(),
        'producto' : (_) => ProductoPage(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 231, 230, 230),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 0, 4, 255),
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 0, 110, 255),
          elevation: 1,
        ),
      ),
    );
  }
}