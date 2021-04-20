import 'package:flutter/material.dart';

import './screens/auth/register_page.dart';
import './screens/auth/login_page.dart';
import './screens/restaurants/restaurant_list.dart';
import './screens/foods/food_list.dart';

void main() => runApp(FlutterFoodApp());

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FluterFood',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(147, 70, 248, 1),
          backgroundColor: Colors.white,
          accentColor: Colors.black,
          brightness: Brightness.dark),
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/restaurants': (context) => RestaurantListScreen(),
        '/foods': (context) => FoodListScreen()
      },
      initialRoute: '/login',
    );
  }
}
