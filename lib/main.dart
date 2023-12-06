import 'package:bbasta_app/screens/categories_scr.dart';
import 'package:bbasta_app/themes/themedata.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: foodAppThemeData,
      home: CategoriesScreen(), // Todo ...,
    );
  }
}
