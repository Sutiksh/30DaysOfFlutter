import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
  CatalogModel _catalog;

  //list to store ids
  final List<int> _itemsId = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  //set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemsId.map((id) => _catalog.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemsId.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemsId.remove(item.id);
  }
}
