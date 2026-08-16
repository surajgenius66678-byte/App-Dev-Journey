import 'package:flutter/material.dart';
class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding:EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.network(image),
    );
  }
}
