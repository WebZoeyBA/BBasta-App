import 'package:bbasta_app/data/selectedMeals.dart';
import 'package:bbasta_app/models/category.dart';
import 'package:bbasta_app/screens/meals_scr.dart';
import 'package:bbasta_app/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => MealsScreen(
            title: category.title,
            meals: filteredMeals,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.4),
          children: [
            for (final category in availableCategories)
              CategoryGridItem(
                  category: category,
                  selectCategory: () {
                    _selectCategory(context, category);
                  }),
            FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FavoriteMeals(isFavorite: true)));
                },
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ))
          ],
        ));
  }
}
