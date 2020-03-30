import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/collection_element.dart';

class CollectingGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collectionElement = Provider.of<CollectionElement>(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(),
        right: BorderSide(),
      )),
      child: Image.network(
        collectionElement.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
