import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/themes/themedata.dart';
import 'package:bbasta_app/widgets/about/meal_about.dart';
import 'package:bbasta_app/widgets/meal_card.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.meal,
  });

  final AssetImage image;
  final String title;
  final String description;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.all(40.0),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: foodAppThemeData.colorScheme.secondaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 71, 70, 70),
                    spreadRadius: 2.0,
                    offset: Offset(4, 4))
              ]),
        ),
        Positioned(
          width: 250,
          height: 150,
          top: -30,
          child: Image(
            image: image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Add to cart",
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AboutMeal(meal: meal)));
                      },
                      child: const Text("About"))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
