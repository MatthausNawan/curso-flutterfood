import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantItemList extends StatelessWidget {
  final String uuid;
  final String name;
  final String image;
  final String contact;

  RestaurantItemList({this.uuid, this.name, this.image, this.contact});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(uuid);
        Navigator.pushNamed(context, '/foods');
      },
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[200]),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: image != ''
                          ? image
                          : 'http://via.placeholder.com/80x80',
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
                ),
                VerticalDivider(
                  color: Colors.black54,
                ),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
