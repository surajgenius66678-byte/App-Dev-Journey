import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Theme%20and%20extension/extensions.dart';
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
            color: Theme.of(context).extension<MyColors>()!.accentColor
          ),
        ),
        Text("Trending products", style: TextStyle(fontSize: 18)),
      ],
    );
  }
}