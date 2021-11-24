import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final String title, desc;
  final Color color;
  Product({
    required this.title,
    required this.desc,
    required this.color,
  });
}

List<Product> products = [
  Product(
    title: "Health",
    color: Color(0xFF71b8ff),
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  ),
  Product(
    title: "Food",
    color: Color(0xFFff6374),
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  ),
  Product(
    title: "Shop list",
    color: Color(0xFFffaa5b),
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  ),
  Product(
    title: "Team meeting",
    color: Color(0xFF9ba0fc),
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  ),
];
