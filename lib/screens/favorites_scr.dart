import 'package:bbasta_app/models/category.dart';
import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:bbasta_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouriteMealsScreen extends ConsumerWidget {
  const FavouriteMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(mealsListNotifier.notifier).state;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: ListView.builder(
          itemCount: favoriteMeals.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(
              favoriteMeals[index].title,
            ));
          }),
    );
  }
}
