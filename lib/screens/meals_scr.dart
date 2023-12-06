import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/themes/themedata.dart';

import 'package:bbasta_app/widgets/meal_card.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.title, required this.meals});
  String title;
  List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealCard(
          image: meals[index].image,
          title: meals[index].title,
          description: meals[index].description),
    );
    if (meals.isEmpty) {
      content = const Center(
        child: Text("Opps something went wrong"),
      );
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: foodAppThemeData.colorScheme.secondary,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              title: Text(title),
              actions: [Icon(Icons.shopping_cart_checkout)],
            )
          ];
        },
        body: content,
      ),
    );
  }
}
