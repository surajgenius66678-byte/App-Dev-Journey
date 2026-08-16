import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class CartModel {

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


}

class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation({required this.item});
  @override
  perform() {
   store!.cart._itemIds.add(item.id);
  }
  
}
class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation({required this.item});
  @override
  perform() {
   store!.cart._itemIds.remove(item.id);
  }
  
}