import 'package:bbasta_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.selectCategory});

  // final void Function() onSelectedCategory;
  final Category category;
  final void Function() selectCategory;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCategory,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: category.image,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                category.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
