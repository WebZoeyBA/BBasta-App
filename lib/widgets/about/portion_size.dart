import 'package:bbasta_app/models/category.dart';
import 'package:bbasta_app/providers/meal_about_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortionSize extends ConsumerWidget {
  PortionSize({
    super.key,
  });

  List<CevapPortion> portionList = CevapPortion.values;
  Map<String, bool> selectedButtons = {};

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {
    return SizedBox(
      height: 100,
      width: double.infinity * 0.7,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisCount: portionList.length),
        itemCount: portionList.length,
        itemBuilder: (context, index) {
          final isSelected =
              widgetRef.watch(portionProvider) == portionList[index];
          String listItem = portionList[index].toString().substring(13);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: isSelected
                      ? MaterialStateProperty.all(Colors.green)
                      : MaterialStateProperty.all(Colors.grey)),
              onPressed: () => widgetRef.read(portionProvider.notifier).state =
                  portionList[index],
              child: Text(
                listItem,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
