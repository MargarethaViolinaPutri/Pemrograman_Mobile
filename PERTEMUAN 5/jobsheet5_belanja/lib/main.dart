import 'package:flutter/material.dart';
import 'package:jobsheet5_belanja/pages/home_page.dart';
import 'package:jobsheet5_belanja/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
