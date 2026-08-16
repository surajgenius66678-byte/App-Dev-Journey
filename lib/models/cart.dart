import 'package:flutter_application_1/models/catalog.dart';
class CartModel {

 static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  // catalog fiel
  late CatalogModel _catalog;

  // collection of IDs -store Ids of each item
  final List<int> _itemIds = [];

  // Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog ){
    _catalog = newCatalog;
  }

  //  Get Items in the cart 
  List<Item> get items => _itemIds.map((id)=>_catalog.getById(id)).toList();

  // Get total price

  num get totalPrice => items.fold(0,(total,current)=> total+current.price); 

  void add(Item item){
    _itemIds.add(item.id); 
  }

  //  Remove item

  void remove (Item item){
    _itemIds.remove(item.id);
  }

}