import 'dart:convert';

class Category {
  String id;
  String name;
  String description;

  Category({this.id, this.name, this.description});

  factory Category.fromJson(jsonData) {
    return Category(
        id: jsonData['id'],
        name: jsonData['name'],
        description: jsonData['description']);
  }

  toJson() {
    return jsonEncode({
      'id': id,
      'name': name,
      'description': description,
    });
  }
}
