import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String id;
  String title;
  String description;
  String image;
  String price;

  FoodCard({this.id, this.title, this.image, this.price, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Colors.white),
          child: Container(
            padding: EdgeInsets.all(9),
            child: Row(
              children: [
                _buildFoodImage(),
                VerticalDivider(
                  color: Colors.black54,
                ),
                _buildFoodDescription(),
                _buildIcon(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodImage() {
    return Container(
      height: 80,
      width: 80,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: image != '' ? image : 'http://via.placeholder.com/80x80',
          placeholder: (context, url) => Container(
            height: 80,
            width: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            height: 80,
            width: 80,
            child: Center(child: Icon(Icons.error)),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodDescription() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(description,
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
          Text(
            price,
            style: TextStyle(color: Colors.green[600]),
          )
        ],
      ),
    );
  }

  Widget _buildIcon(context) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).primaryColor),
      child: Icon(Icons.shopping_cart),
    );
  }
}
