import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/collections.dart';
import './profile_collection_list_item.dart';

class ProfileCollectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collections = Provider.of<Collections>(context).items;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ChangeNotifierProvider.value(
          value: collections[index],
          child: ProfileCollectionListItem(),
        ),
        childCount: collections.length,
      ),
    );
  }
}