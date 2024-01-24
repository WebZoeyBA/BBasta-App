import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogoAppBar extends ConsumerWidget {
  LogoAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealNotifier = ref.watch(mealsListNotifier);
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      title: Image(image: AssetImage('images/LOGOFINAL.png')),
      actions: [
        Icon(Icons.shopping_cart),
      ],
    );
  }
}
