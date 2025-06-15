// lib/models/coffee_item.dart
class CoffeeItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String type;

  CoffeeItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.type,
  });

  // factory CoffeeItem.fromJson(Map<String, dynamic> json) {
  //   return CoffeeItem(
  //     id: json['id'],
  //     name: json['name'],
  //     description: json['description'],
  //     price: json['price'],
  //     image: json['image'],
  //   );
  // }
}