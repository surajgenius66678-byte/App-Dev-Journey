import "package:flutter/material.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart";
import "package:flutter_application_1/widgets/Theme%20and%20extension/theme.dart";
import "package:flutter_application_1/widgets/home%20widget/add_to_cart.dart";

class HomeDetailPage extends StatelessWidget{
  final Item catalog ;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar:Material(
        color: Theme.of(context).cardColor,
        child:Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Container(
                    color: Theme.of(context).cardColor,
                    child: OverflowBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${catalog.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: const Color.fromARGB(255, 182, 25, 14)
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child : AddToCart(catalog: catalog),
                        ),
                      ],
                    ),
                  ),
                ),
      ),
      body: SafeArea(
        bottom: false,
      child :Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image,height: 250
            ,)
            
       ) ,
       Expanded(
        child: ClipPath(
          child: Container(
            color: Theme.of(context).cardColor,
           width: MediaQuery.of(context).size.width,
            child: Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 48, 0, 48),
            child: Column(
              children: [
                Text(
                  catalog.name,
                  style: TextStyle(
                    color: Theme.of(context).extension<MyColors>()!.accentColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  catalog.desc,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Padding(padding: EdgeInsetsGeometry.all(16),child:Text(catalog.description))
                ,
                SizedBox(height: 10 ),
              ],
            ),
            ),
          ),
        )
        )
       ],
      ),
     ) );
  }
}
  