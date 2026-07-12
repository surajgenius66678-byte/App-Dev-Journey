import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_header.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_list.dart";
import "dart:convert";
import "package:flutter_application_1/widgets/theme.dart";

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
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                Expanded(
                  child : Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 0),
                  child: CatalogList()
                  
                  )
                  )
              else
              Expanded(child: 
              Center(
                // child: CircularProgressIndicator()
              child: CircularProgressIndicator()
              ))
            ],
          ),
        ),
      ),
    );
  }
}

