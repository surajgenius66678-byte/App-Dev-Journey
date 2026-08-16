import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
 AddToCart({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context , on:[AddMutation,RemoveMutation]);
final CartModel _cart=(VxState.store as MyStore).cart;
    bool isinCart = _cart.items.contains(catalog) 
    ;
    return ElevatedButton(
      onPressed: () {
        if(!isinCart){
        AddMutation(item:catalog);
      }},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).extension<MyColors>()!.buttonColor,
      ),
      child: isinCart
          ? Icon(Icons.done)
          : 
          Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
