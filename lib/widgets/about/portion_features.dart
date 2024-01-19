import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortionFeatures extends ConsumerWidget {
  Function favoriteFunction;
  PortionFeatures({super.key, required this.favoriteFunction});

  bool isBottomSelected = false;
  Color colorBottom = Colors.grey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentState = ref.watch(mealsListNotifier);
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
            onPressed: () => favoriteFunction(),
            icon: const Icon(
              Icons.favorite,
              size: 35,
            ))
      ],
    );
  }
}
