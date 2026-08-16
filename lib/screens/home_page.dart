import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/utilities/routes.dart";
import "package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_header.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_list.dart";
import "dart:convert";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 4;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final catalogJason = await rootBundle.loadString(
      "assests/files/catlog.json",
    );
    final decodeData = jsonDecode(catalogJason);
    final productsData = decodeData["products"];
    CatalogModel.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).extension <MyColors> ()!. buttonColor,
        onPressed: ()=>Navigator.pushNamed(context,MyRoute.cartRoute),
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if ( CatalogModel.items.isNotEmpty)
                Expanded(
                  child : Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 0),
                  child: CatalogList()
                  
                  )
                  )
              else
              Expanded(child: 
              Center(
              child: CircularProgressIndicator()
              ))
            ],
          ),
        ),
      ),
    );
  }
}

