class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Red Dead Redemption 2",
        developer:
            "Rockstar Games",
        price: '\$49.99',
        rating: 5,
        image: "https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String developer;
  final String price;
  final num rating;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.developer,
      required this.price,
      required this.rating,
      required this.image});
}
