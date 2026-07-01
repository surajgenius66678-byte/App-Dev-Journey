import  "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/drawer.dart";
import "package:flutter_application_1/widgets/item_widget.dart";
import "dart:convert";

import "package:flutter_application_1/widgets/theme.dart";
class HomePage extends StatefulWidget {
    const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final int day=4;
        @override
    void initState(){
      super.initState();
      loadData();
    }
    void loadData()async{
      await Future.delayed(Duration(seconds: 5));
      final catalogJason = await rootBundle.loadString("assests/files/catlog.json");
      final decodeData = jsonDecode(catalogJason);
      final productsData = decodeData["products"];
      CatalogModel.items = List.from(productsData).map<Item>((item)=>Item.fromMap(item)).toList();
      setState(() {
        
      });
    }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:EdgeInsets.all(32) ,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
           (CatalogModel.items !=null&& CatalogModel.items.isNotEmpty)?CatalogList:(child:CircularProgressIndicator)
              ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget{
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context){
    return 
        Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Catalog App",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,
              color: MyTheme.darkbluishColor,
              ),),
            Text("Trending products",style: TextStyle(fontSize: 16),)
           
              ],
          );
  
  }
}



class CatalogList extends StatelessWidget{
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog:catalog);
      }
      );
  
  }
}

class CatalogItem extends StatelessWidget{
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
   return Container(
   height: 100,
   width: 100,
   );
  }
}
