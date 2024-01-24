import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/screens/cart_screen.dart';
import 'package:bbasta_app/screens/favorites_scr.dart';
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
        description: meals[index].description,
        meal: meals[index],
      ),
    );
    if (meals.isEmpty) {
      content = const Center(
        child: Text("Opps something went wrong"),
      );
    }
    return Scaffold(
      backgroundColor: foodAppThemeData.colorScheme.onSecondary,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              flexibleSpace: const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Image(
                  image: AssetImage('images/LOGOFINAL.png'),
                  fit: BoxFit.contain,
                ),
              ),
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartScreen()));
                    },
                    icon: const Icon(Icons.shopping_cart_checkout)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FavouriteMealsScreen()));
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ))
              ],
            )
          ];
        },
        body: content,
      ),
    );
  }
}
