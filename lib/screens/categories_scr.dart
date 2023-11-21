import 'package:bbasta_app/widgets/bg.dart';
import 'package:bbasta_app/widgets/categories.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
          child: Background(
        child: CategoriesWidget(),
      )),
    );
  }
}
