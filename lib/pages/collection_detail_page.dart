import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/collection_detail_header.dart';
import '../providers/collections.dart';
import '../providers/collection_elements.dart';

import '../widgets/collection_element_list_item.dart';

class CollectionDetailPage extends StatelessWidget {
  static const namedRoute = './collection-detail';

  @override
  Widget build(BuildContext context) {
    final collectionId = ModalRoute.of(context).settings.arguments as String;
    final collection = Provider.of<Collections>(context).findById(collectionId);
    final collectionElements = Provider.of<CollectionElements>(context)
        .listByCollectionId(collectionId);
    return Scaffold(
      appBar: AppBar(
        title: Text(collection.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return index == 0
              ? CollectionDetailHeader(
                  collectionTitle: collection.title,
                  collectionDescription: collection.description,
                  // collectionAuthor: collection.author,
                )
              : CollectionElementListItem(
                  elementTitle: collectionElements[index - 1].title,
                  elementDescription: collectionElements[index - 1].description,
                  elementImageUrl: collectionElements[index - 1].imageUrl,
                );
        },
        itemCount: collectionElements.length + 1,
      ),
    );
  }
}
