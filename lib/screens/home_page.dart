import  "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/drawer.dart";
import "package:flutter_application_1/widgets/item_widget.dart";
import "dart:convert";
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
      appBar: AppBar(
        title: Text("catalog App"
        // ,style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
      ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child:(CatalogModel.items!=null&& CatalogModel.items.isNotEmpty)? ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder:(context,index){
              return ItemWidget(
                item:CatalogModel.items[index],
              );
            } ,
          ):Center(
            child: CircularProgressIndicator(),
          ),
        ),
          drawer: MyDrawer(),
      );
  }
}