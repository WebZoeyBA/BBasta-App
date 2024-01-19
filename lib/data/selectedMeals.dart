import 'package:bbasta_app/models/meals.dart';
import 'package:flutter/material.dart';

class FavoriteMeals extends StatefulWidget {
  bool isFavorite;
  FavoriteMeals({super.key, required this.isFavorite});

  @override
  State<FavoriteMeals> createState() => _FavoriteMealsState();
}

class _FavoriteMealsState extends State<FavoriteMeals> {
  List<Meal> selectedMeals = [];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
