import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/collection/collecting_grid/collecting_grid.dart';
import '../widgets/collection/collecting_list/collecting_list.dart';
import '../widgets/collection/header/collection_header.dart';
import '../providers/collections.dart';

class CollectionPage extends StatelessWidget {
  static const namedRoute = './collection';

  @override
  Widget build(BuildContext context) {
    final collectionId = ModalRoute.of(context).settings.arguments as String;
    final collection = Provider.of<Collections>(context).findById(collectionId);
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(collection.title),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CollectionHeader(
                collectionTitle: collection.title,
                collectionDescription: collection.description,
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              CollectingGrid(collectionId: collectionId),
              CollectingList(collectionId: collectionId),
              CollectingList(collectionId: collectionId, pictured: false),
            ],
          ),
        ),
      ),
    );
  }
}
