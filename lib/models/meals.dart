import 'package:flutter/material.dart';

class Meal {
  const Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.description,
      required this.price,
      required this.image});

  final String id;
  final List<String> categories;
  final String title;
  final String description;
  final double price;
  final AssetImage image;
}
