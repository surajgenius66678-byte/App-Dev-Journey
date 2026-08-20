import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/core/store.dart";
import "package:flutter_application_1/models/cart.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/utilities/routes.dart";
import "package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_header.dart";
import "package:flutter_application_1/widgets/home%20widget/catalog_list.dart";
import "dart:convert";

import "package:velocity_x/velocity_x.dart";
import 'package:http/http.dart'as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 4;
  final url="https://api.jsonbin.io/v3/qs/6a878a69f5f4af5e292ee619";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 5));
    // final catalogJason = await rootBundle.loadString(
    //   "assests/files/catlog.json",
    // );
    final response=await http.get(Uri.parse(url));
    final catalogJason= response.body;
    final decodeData = jsonDecode(catalogJason);
    final productsData = decodeData["record"]["products"];
    CatalogModel.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: VxBuilder(
        mutations:{AddMutation,RemoveMutation},
        builder :(context,_,_) => Badge(
          label: Text('${_cart.items.length}'),
          backgroundColor: Colors.red,
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).extension<MyColors>()!.buttonColor,
            onPressed: () => Navigator.pushNamed(context, MyRoute.cartRoute),
            child: Icon(CupertinoIcons.cart, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 0),
                    child: CatalogList(),
                  ),
                )
              else
                Expanded(child: Center(child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }
}
