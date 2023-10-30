import 'package:flutter/material.dart';

class Item {
  String name;
  int price;
  String deskripsi;
  AssetImage image;

  Item(
      {required this.name,
      required this.price,
      required this.deskripsi,
      required this.image});
}
