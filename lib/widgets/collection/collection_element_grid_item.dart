import 'package:flutter/material.dart';

class CollectionElementGridItem extends StatelessWidget {
  final String elementTitle;
  final String elementDescription;
  final String elementImageUrl;

  CollectionElementGridItem({
    @required this.elementTitle,
    @required this.elementDescription,
    @required this.elementImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(),
        right: BorderSide(),
      )),
      child: Image.network(
        elementImageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
