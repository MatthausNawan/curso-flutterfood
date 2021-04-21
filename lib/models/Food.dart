import 'dart:convert';

class Food {
  String id;
  String title;
  String description;
  String image;
  String price;

  Food({this.id, this.title, this.image, this.price, this.description});

  factory Food.fromJson(jsonData) {
    return Food(
        id: jsonData['id'],
        title: jsonData['title'],
        image: jsonData['image'],
        price: jsonData['price'],
        description: jsonData['description']);
  }

  toJson() {
    return jsonEncode({
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'description': description,
    });
  }
}
