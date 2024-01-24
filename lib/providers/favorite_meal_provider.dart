import 'package:bbasta_app/models/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteMealNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final isFavoriteMeal = state.contains(meal);
    if (isFavoriteMeal) {
      state = state.where((item) => item.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final mealsListNotifier =
    StateNotifierProvider<FavoriteMealNotifier, List<Meal>>(
        (ref) => FavoriteMealNotifier());

class CartNotifier extends StateNotifier<List<Meal>> {
  CartNotifier() : super([]);
  bool toggleCartStatus(Meal meal) {
    final isAddedToCart = state.contains(meal);
    if (isAddedToCart) {
      state = state.where((cartItem) => cartItem.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final cartListNotifier = StateNotifierProvider<CartNotifier, List<Meal>>(
  (ref) => CartNotifier(),
);
