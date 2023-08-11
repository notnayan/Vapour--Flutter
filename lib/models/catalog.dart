class CatalogModel {
  static List<Item> items = [];

  // Get Item by ID
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by Position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String developer;
  final num price;
  final String rating;
  final String image;
  final String description;

  Item(
      {required this.id,
      required this.name,
      required this.developer,
      required this.price,
      required this.rating,
      required this.image,
      required this.description});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        developer: map["developer"],
        price: map["price"],
        rating: map["rating"],
        image: map["image"],
        description: map["description"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "developer": developer,
        "price": price,
        "rating": rating,
        "image": image,
        "description": description
      };
}
