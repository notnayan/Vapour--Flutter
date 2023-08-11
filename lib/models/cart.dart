import 'package:catalog_app/models/catalog.dart';

class CartModel {

  // Catalog field
  CatalogModel _catalog;

  // Collection of ID's - store ID's of each item
  final List<int> _itemIDs = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  // Set Catalog
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get Items in Cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getById(id)).toList();

  // Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item){
    _itemIDs.add(item.id);
  }

  // Remove Item
  void remove(Item item){
    _itemIDs.remove(item.id);
  }  
}
