import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        //   textTheme: ThemeData.light().textTheme.copyWith(
        //         bodyText1: TextStyle(
        //           color: Color.fromRGBO(20, 51, 51, 1),
        //         ),
        //         bodyText2: TextStyle(
        //           color: Color.fromRGBO(20, 51, 51, 1),
        //         ),
        //         titleLarge:
        //             TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'),
        //       ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // OPTIONAL
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
