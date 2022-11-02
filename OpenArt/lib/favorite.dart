import 'package:flutter/material.dart';

import 'components/bar.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'images/Logo.png',
          width: 120,
          height: 120,
        ),
        foregroundColor: Colors.black,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Bar(),
      ),
    );
  }
}
