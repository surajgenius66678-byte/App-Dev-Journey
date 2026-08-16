import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor:Theme.of(context).canvasColor,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: Text("Cart",textAlign: TextAlign.center,),
      centerTitle: true,
    ),
    body: Column(
      children: [
        Expanded(
          child: Padding(padding: EdgeInsetsGeometry.all(32),
          child:_Cart_List(),
          ),
        ),
        Divider(),
        _CartTotal(),
      ],
    ),
   );    
  }
} 

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final _cart=CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("\$${_cart.totalPrice}",textScaler: TextScaler.linear(2.5),style: TextStyle(color: Theme.of(context).extension <MyColors>()!.accentColor),),
          SizedBox(
            width: 30,
          ),
          SizedBox(
            width:120,
            child:ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Buying not supported Yet")));
            }, 
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Theme.of(context).extension <MyColors>()!.buttonColor
            ),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.zero))
          ),
          child: Text("Buy",style: TextStyle(color: Colors.white),)
          ))
        ],
      ),
    );

}}

class _Cart_List extends StatefulWidget{
  @override
  State<_Cart_List> createState() => _Cart_ListState();
}

class _Cart_ListState extends State<_Cart_List> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?Center( child:Text("Nothing to show",textAlign: TextAlign.center,style: TextStyle(fontSize: 28),) ):ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder:(context,index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: (){
            _cart.remove(_cart.items[index]);
            setState(() {
              
            });
          },
          ),
          title: Text(_cart.items[index].name),
      ),
      );
  }
}