import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/themes/themedata.dart';
import 'package:bbasta_app/widgets/custom_appbar.dart';
import 'package:bbasta_app/widgets/sil_appbar.dart';
import 'package:flutter/material.dart';

class AboutMeal extends StatelessWidget {
  const AboutMeal({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    AppBar customAppBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Image.asset(
            'images/LOGOFINAL.png',
            width: 75,
            height: 75,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [Icon(Icons.shopping_cart)],
      );
    }

    return Scaffold(
        backgroundColor: foodAppThemeData.colorScheme.onSecondary,
        appBar: customAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: foodAppThemeData.colorScheme.onSecondary,
              elevation: 10,
              shadowColor: Colors.grey,
              surfaceTintColor: Colors.transparent,
              child: Image(
                image: meal.image,
                fit: BoxFit.contain,
              ),
            ),
            Center(child: Text(meal.description))
          ],
        ));
  }
}
