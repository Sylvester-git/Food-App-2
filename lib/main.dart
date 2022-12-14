import 'package:flutter/material.dart';
import '../Screens/errorscreen/error_screen.dart';
import '../Screens/tab_screens.dart';

import './Screens/meal_detail.dart';

import 'Screens/categorised_meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              headline5: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: Colors.cyanAccent),
      ),
      //home: Homepage(),
      //using navigator.pushnamed
      initialRoute: './',
      routes: {
        './': (context) => Tabscreen(),
        CategoryDetailscreen.routname: (context) => CategoryDetailscreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) {
          return ErrorScreen();
        });
      },
    );
  }
}
