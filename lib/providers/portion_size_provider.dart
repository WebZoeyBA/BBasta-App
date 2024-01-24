import 'package:bbasta_app/models/category.dart';
import 'package:bbasta_app/models/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class PortionSizeNotifier extends StateNotifier<List<Meal>> {
  PortionSizeNotifier() : super([]);

  void updateMealPortionSize(String id, CevapPortion newPortionSize) {
    state = state.map((meal) {
      if (meal.id == id) {
        return Meal(
            id: meal.id,
            categories: meal.categories,
            title: meal.title,
            description: meal.description,
            price: meal.price,
            image: meal.image,
            hasPortionSize: meal.hasPortionSize,
            portionSize: newPortionSize);
      } else {
        return meal;
      }
    }).toList();
  }
}

final portionNotifier = StateNotifierProvider<PortionSizeNotifier, List<Meal>>(
    (ref) => PortionSizeNotifier());
