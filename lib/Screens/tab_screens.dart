import 'package:flutter/material.dart';
import '../Screens/Categories.dart';
import '../Screens/favorites.dart';

class Tabscreen extends StatefulWidget {
  const Tabscreen({super.key});

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DeliFoods'),
          bottom: const TabBar(tabs: <Widget>[
            //First Tab
            Tab(
              icon: Icon(
                Icons.category_rounded,
              ),
              text: 'Categories',
            ),
            //secondTab
            Tab(
              icon: Icon(Icons.favorite_rounded),
              text: 'Favorite',
            ),
          ]),
        ),
        //Note that the defaulttabcontroller controls which tab was pressed and then tabbarview shows
        //the screen in a sequencial oreder i.e the category will show the first widget in the tabbarview
        body: const TabBarView(children: [
          CategoryScreen(),
          Favoritescreen(),
        ]),
      ),
    );
  }
}
