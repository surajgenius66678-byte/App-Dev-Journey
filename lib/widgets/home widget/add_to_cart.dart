import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({super.key, required this.catalog});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isinCart = _cart.items.contains(widget.catalog) 
    ;
    return ElevatedButton(
      onPressed: () {
        if(!isinCart){
        isinCart = !isinCart;
        final _catalog = CatalogModel();

        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
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
