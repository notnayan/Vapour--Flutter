import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "/": (context)=> const LoginPage(),
        "/home":(context) => const HomePage(),
        "/login":(context) => const LoginPage(),
      },
      );

  }
}