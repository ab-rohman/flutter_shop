import 'package:belanja/pages/home_page.dart';
import 'package:flutter/material.dart';
import './pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
