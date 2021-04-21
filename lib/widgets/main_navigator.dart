import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainNavigator extends StatelessWidget {
  int _activeItem = 0;

  MainNavigator(this._activeItem);
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Theme.of(context).primaryColor,
      backgroundColor: Colors.white,
      index: _activeItem,
      items: [
        Icon(Icons.home),
        Icon(Icons.list),
        Icon(Icons.shopping_bag),
        Icon(Icons.person)
      ],
      onTap: (index) {
        print("Navigate to index");
      },
    );
  }
}
