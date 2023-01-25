import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/famous_screens.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

final Map<String, dynamic> sampleMap = {
  'a': {'b': 1},
  'c': [1, 2, 3]
};

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    inspect(sampleMap);
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.category,
                semanticLabel: 'Categories',
              ),
            ),
            Tab(
              icon: Icon(
                Icons.star,
                semanticLabel: 'Favorites',
              ),
            )
          ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavouritesScreen(),
          ],
        ),
      ),
    );
  }
}
