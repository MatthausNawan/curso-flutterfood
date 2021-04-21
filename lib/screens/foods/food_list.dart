import 'package:flutter/material.dart';
import 'package:flutterfood/models/Category.dart';
import 'package:flutterfood/models/Food.dart';
import 'package:flutterfood/screens/foods/widgets/categories.dart';
import 'package:flutterfood/widgets/food_card.dart';

class FoodListScreen extends StatefulWidget {
  @override
  _FoodListScreenState createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  List<Category> _categories = [
    Category(id: '1', name: 'Lanches', description: 'Lanches Gostosos'),
    Category(id: '2', name: 'Bebidas', description: 'Lanches Gostosos'),
    Category(id: '3', name: 'Açaí', description: 'Lanches Gostosos'),
    Category(id: '4', name: 'Janta', description: 'Lanches Gostosos'),
    Category(id: '5', name: 'Entradas', description: 'Lanches Gostosos'),
    Category(id: '6', name: 'Petiscos', description: 'Lanches Gostosos'),
    Category(id: '7', name: 'Pizzas', description: 'Lanches Gostosos'),
  ];
  List<Food> _foods = [
    Food(
        id: '1',
        description: 'Um produto mto bom',
        price: '12.25',
        title: 'Pizza G Frango',
        image: ''),
    Food(
        id: '1',
        description: 'Um produto mto bom',
        price: '12.25',
        title: 'Pizza G Frango',
        image: ''),
    Food(
        id: '1',
        description: 'Um produto mto bom',
        price: '12.25',
        title: 'Pizza G Frango',
        image: ''),
    Food(
        id: '1',
        description: 'Um produto mto bom',
        price: '12.25',
        title: 'Pizza G Frango',
        image: ''),
    Food(
        id: '1',
        description: 'Um produto mto bom',
        price: '12.25',
        title: 'Pizza G Frango',
        image: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurant Foods',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildPageUI(context),
    );
  }

  Widget _buildPageUI(context) {
    return Column(
      children: [Categories(_categories), _buildFoods()],
    );
  }

  Widget _buildFoods() {
    return Container(
      height: (MediaQuery.of(context).size.height - 230),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: _foods.length,
        itemBuilder: (context, index) {
          final Food food = _foods[index];
          return FoodCard(
              title: food.title,
              description: food.description,
              price: food.price,
              image: food.image,
              id: food.id);
        },
      ),
    );
  }
}
