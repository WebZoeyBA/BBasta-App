import 'package:bbasta_app/models/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteMealNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state.where((element) => element.id == meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final mealsListNotifier =
    StateNotifierProvider<FavoriteMealNotifier, List<Meal>>(
        (ref) => FavoriteMealNotifier());
