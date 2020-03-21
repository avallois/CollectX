import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/collections.dart';
import './collection_list_item.dart';

class CollectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collections = Provider.of<Collections>(context).items;
    return ListView.builder(
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: collections[index],
        child: CollectionListItem(),
      ),
      itemCount: collections.length,
    );
  }
}
