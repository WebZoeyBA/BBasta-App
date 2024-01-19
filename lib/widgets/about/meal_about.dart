import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:bbasta_app/themes/themedata.dart';
import 'package:bbasta_app/widgets/about/portion_features.dart';
import 'package:bbasta_app/widgets/about/portion_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutMeal extends ConsumerWidget {
  const AboutMeal({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteMealsNotifier = ref.watch(mealsListNotifier.notifier);

    AppBar customAppBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Image.asset(
            'images/LOGOFINAL.png',
            width: 75,
            height: 75,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent)),
            icon: const Icon(Icons.arrow_back)),
        actions: [const Icon(Icons.shopping_cart)],
      );
    }

    return Scaffold(
        backgroundColor: foodAppThemeData.colorScheme.onSecondary,
        appBar: customAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(meal.title),
            Card(
              color: foodAppThemeData.colorScheme.onSecondary,
              elevation: 5,
              shadowColor: Colors.white.withOpacity(0.2),
              surfaceTintColor: Colors.transparent,
              child: Image(
                image: meal.image,
                fit: BoxFit.contain,
              ),
            ),
            PortionFeatures(
                favoriteFunction: () =>
                    favouriteMealsNotifier.toggleMealFavoriteStatus(meal)),
            Center(child: Text(meal.description))
          ],
        ));
  }
}
