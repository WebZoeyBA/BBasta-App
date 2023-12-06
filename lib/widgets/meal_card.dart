import 'package:bbasta_app/themes/themedata.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final AssetImage image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: foodAppThemeData.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(163, 23, 23, 23),
                spreadRadius: 2.0,
                offset: Offset(7, 7))
          ]),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropShadow(
                color: Color.fromARGB(163, 23, 23, 23),
                child: Image(
                  image: image,
                ),
              ),
              Text(
                title,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add to cart",
                    ),
                  ),
                  OutlinedButton(onPressed: () {}, child: Text("About"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
