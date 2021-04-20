import 'package:flutter/material.dart';
import 'package:flutterfood/screens/restaurants/widgets/restaurant_item_list.dart';
import '../../models/Restaurant.dart';

class RestaurantListScreen extends StatefulWidget {
  @override
  _RestaurantListScreenState createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  @override
  List<Restaurant> _restaurants = [
    new Restaurant(
        name: 'Fan Pizza',
        image: '',
        contact: 'fanpizza@email.com',
        uuid: '111121-4-545-444-544'),
    new Restaurant(
        name: 'Nordestina',
        image: '',
        contact: 'norderstina@email.com',
        uuid: '111121-4-545-444-544'),
    new Restaurant(
        name: 'PizzaBurg',
        image: '',
        contact: 'pizzaburg@email.com',
        uuid: '111121-4-545-444-544'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildRestaurants(context),
    );
  }

  Widget _buildRestaurants(context) {
    return Container(
      child: ListView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index) {
          final Restaurant restaurant = _restaurants[index];
          return RestaurantItemList(
            uuid: restaurant.uuid,
            name: restaurant.name,
            image: restaurant.image,
            contact: restaurant.contact,
          );
        },
      ),
    );
  }
}
