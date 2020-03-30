import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/collection_elements.dart';
import './collecting_list_item.dart';

class CollectingList extends StatelessWidget {
  final String collectionId;
  final bool pictured;

  CollectingList({
    @required this.collectionId,
    this.pictured = true,
  });

  @override
  Widget build(BuildContext context) {
    final collectionElements = Provider.of<CollectionElements>(context)
        .findByCollectionId(collectionId);

    return ListView.builder(
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: collectionElements[index],
        child: CollectingListItem(pictured: pictured),
      ),
      itemCount: collectionElements.length,
    );
  }
}
