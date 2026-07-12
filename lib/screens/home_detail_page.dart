import "package:flutter/material.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/theme.dart";

class HomeDetailPage extends StatelessWidget{
  final Item catalog ;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:Material(
        color: Colors.white,
        child:Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Container(
                    color: Colors.white,
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
                          width: 100,
                          height: 50,
                          child : ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyTheme.darkbluishColor,
                            
                          ),
                          child: Text(
                            "Buy",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
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
            color: Colors.white,
           width: MediaQuery.of(context).size.width,
            child: Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 48, 0, 48),
            child: Column(
              children: [
                Text(
                  catalog.name,
                  style: TextStyle(
                    color: MyTheme.darkbluishColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  catalog.desc,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 10),
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
  