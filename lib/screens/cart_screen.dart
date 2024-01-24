import 'package:bbasta_app/providers/favorite_meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartContent = ref.watch(cartListNotifier.notifier).state;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: cartContent.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(cartContent[index].title),
            );
          }),
    );
  }
}
