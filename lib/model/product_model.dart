import 'dart:math';

import 'avis_model.dart';

class Product {
  int id;
  String title;
  String description;
  num price;
  String category;
  String image;

  List<Avis> avis = <Avis>[
    Avis(
        "Quelqu'un",
        "https://thispersondoesnotexist.com/image?${Random().toString()}",
        1,
        "c dla merde"),
    Avis(
        "Quelqu'un",
        "https://thispersondoesnotexist.com/image?${Random().toString()}",
        2.5,
        "c mieux"),
    Avis(
        "Quelqu'un",
        "https://thispersondoesnotexist.com/image?${Random().toString()}",
        4,
        "ça va"),
  ];

  Product(this.id, this.title, this.price, this.description, this.category,
      this.image);

  String getPrice() => "Le prix du produit est $price€";

  Product.fromJson(Map<String, dynamic> map)
      : id = map["id"],
        title = map["title"],
        price = map["price"],
        description = map["description"],
        category = map["category"],
        image = map["image"];
}
