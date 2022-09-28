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
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 231, 231),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 25, 0, 255),
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 1, 26, 250),
          elevation: 1,
        ),
      ),
    );
  }
}