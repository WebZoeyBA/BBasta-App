import 'package:bbasta_app/models/meals.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.title, required this.meals});
  String title;
  List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => Text(meals[index].title));
    if (meals.isEmpty) {
      content = const Center(
        child: Text("Opps something went wrong"),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
