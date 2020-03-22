import 'package:flutter/material.dart';

class CollectionElementListItem extends StatelessWidget {
  final String elementTitle;
  final String elementDescription;
  final String elementImageUrl;

  CollectionElementListItem({
    @required this.elementTitle,
    @required this.elementDescription,
    @required this.elementImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(elementTitle),
          Text(elementDescription),
          Image.network(elementImageUrl),
        ],
      ),
    );
  }
}
