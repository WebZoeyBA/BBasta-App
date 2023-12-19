import 'package:flutter/material.dart';

class SilAppbar extends StatefulWidget {
  const SilAppbar({super.key});

  @override
  State<SilAppbar> createState() => _SilAppbarState();
}

class _SilAppbarState extends State<SilAppbar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      flexibleSpace: const Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Image(
          image: AssetImage('images/LOGOFINAL.png'),
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [Icon(Icons.shopping_cart_checkout)],
    );
  }
}
