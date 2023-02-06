import 'package:flutter/material.dart';
import 'package:library_app/pages/cart_page.dart';
import 'package:library_app/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook Store',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const CartPage(),
    );
  }
}
