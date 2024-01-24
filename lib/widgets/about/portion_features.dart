import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortionFeatures extends ConsumerWidget {
  Function favoriteFunction;
  Meal meal;
  PortionFeatures(
      {super.key,
      required this.favoriteFunction,
      required this.meal,
      required this.iconColor});

  bool isBottomSelected = false;
  Color colorBottom = Colors.grey;
  Color iconColor = Colors.grey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRed = ref.watch(mealsListNotifier.notifier).state.contains(meal);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            Icon(
              Icons.av_timer,
            ),
            Text("15-20 min"),
          ],
        ),
        const SizedBox(width: 180),
        IconButton(
            color: colorBottom,
            isSelected: isBottomSelected,
            onPressed: () {
              favoriteFunction();
            },
            icon: Icon(
              Icons.favorite,
              size: 35,
              color: isRed ? Colors.red : Colors.grey,
            ))
      ],
    );
  }
}
