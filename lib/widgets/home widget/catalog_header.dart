import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/theme.dart';
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: MyTheme.darkbluishColor,
          ),
        ),
        Text("Trending products", style: TextStyle(fontSize: 22)),
      ],
    );
  }
}