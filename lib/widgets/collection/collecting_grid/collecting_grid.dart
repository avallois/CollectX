import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/collection_elements.dart';
import './collecting_grid_item.dart';

class CollectingGrid extends StatelessWidget {
  final String collectionId;

  CollectingGrid({@required this.collectionId});

  @override
  Widget build(BuildContext context) {
    final collectionElements = Provider.of<CollectionElements>(context)
        .findByCollectionId(collectionId);

    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: collectionElements[index],
          child: CollectingGridItem(),
        ),
      itemCount: collectionElements.length,
    );
  }
}
