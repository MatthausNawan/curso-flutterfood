import 'dart:convert';

class Food {
  String id;
  String name;
  String description;
  String image;
  String price;

  Food({this.id, this.name, this.image, this.price, this.description});

  factory Food.fromJson(jsonData) {
    return Food(
        id: jsonData['id'],
        name: jsonData['name'],
        image: jsonData['image'],
        price: jsonData['price']),
        description: jsonData['description']);
  }

  toJson() {
    return jsonEncode({
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'description': description,
    });
  }
}
