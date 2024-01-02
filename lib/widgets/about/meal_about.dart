import 'package:bbasta_app/models/category.dart';
import 'package:bbasta_app/models/meals.dart';
import 'package:bbasta_app/themes/themedata.dart';
import 'package:flutter/material.dart';

class AboutMeal extends StatefulWidget {
  const AboutMeal({super.key, required this.meal});
  final Meal meal;

  @override
  State<AboutMeal> createState() => _AboutMealState();
}

class _AboutMealState extends State<AboutMeal> {
  List<CevapPortion> stringList = CevapPortion.values.toList();
  Map<String, bool> selectedButtons = {};
  bool isUpperSelected = false;
  bool isBottomSelected = false;
  Color colorBottom = const Color.fromARGB(255, 32, 32, 32);
  Color markColor = Colors.green;
  @override
  void initState() {
    super.initState();
    for (var listItem in stringList) {
      selectedButtons[listItem.toString()] = false;
    }
  }

  void bottomButtonColor(Color colorf, Color colors) {
    setState(() {
      if (isBottomSelected == false) {
        isBottomSelected = true;
        colorBottom = colorf;
      } else {
        isBottomSelected = false;
        colorBottom = colors;
      }
    });
  }

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
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent)),
            icon: const Icon(Icons.arrow_back)),
        actions: [const Icon(Icons.shopping_cart)],
      );
    }

    return Scaffold(
        backgroundColor: foodAppThemeData.colorScheme.onSecondary,
        appBar: customAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.meal.title),
            Card(
              color: foodAppThemeData.colorScheme.onSecondary,
              elevation: 5,
              shadowColor: Colors.white.withOpacity(0.2),
              surfaceTintColor: Colors.transparent,
              child: Image(
                image: widget.meal.image,
                fit: BoxFit.contain,
              ),
            ),
            Container(
                height: 100,
                width: double.infinity * 0.7,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10, crossAxisCount: stringList.length),
                  itemCount: stringList.length,
                  itemBuilder: (context, index) {
                    String listItem = stringList[index].toString();
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 5.0),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: selectedButtons[listItem] == true
                                ? MaterialStateProperty.all(Colors.green)
                                : null),
                        onPressed: () {
                          setState(() {
                            selectedButtons[listItem] =
                                !selectedButtons[listItem]!;
                          });
                        },
                        child: Text(
                          listItem.toString().substring(13),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                )),
            Row(
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
                      bottomButtonColor(
                          const Color.fromARGB(255, 32, 32, 32), Colors.red);
                    },
                    icon: const Icon(
                      Icons.favorite,
                      size: 35,
                    ))
              ],
            ),
            Center(child: Text(widget.meal.description))
          ],
        ));
  }
}
