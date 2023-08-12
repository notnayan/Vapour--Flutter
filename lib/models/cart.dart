import 'package:catalog_app/models/catalog.dart';
import 'package:vxstate/vxstate.dart';

import '../core/store.dart';

class CartModel {
  // Catalog field
  CatalogModel _catalog = CatalogModel();

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

}

class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIDs.add(item.id);
  }

}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIDs.remove(item.id);
  }

}
