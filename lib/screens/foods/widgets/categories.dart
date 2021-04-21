import 'package:flutter/material.dart';
import 'package:flutterfood/models/Category.dart';

class Categories extends StatelessWidget {
  List<Category> _categories;

  Categories(this._categories);

  @override
  Widget build(BuildContext context) {
    return _buildCategories(_categories, context);
  }

  Widget _buildCategories(_categories, context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final Category category = _categories[index];
          return _buildCategory(category, context);
        },
      ),
    );
  }

  Widget _buildCategory(Category category, context) {
    return Container(
      padding: EdgeInsets.only(top: 2, left: 20, bottom: 2, right: 20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
            color: category.name == 'Bebidas'
                ? Theme.of(context).primaryColor
                : Colors.grey),
      ),
      child: Center(
        child: Text(
          category.name,
          style: TextStyle(
              color: category.name == 'Bebidas'
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
