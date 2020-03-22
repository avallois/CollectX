import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/collections.dart';
import './collection_list_item.dart';

class CollectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collections = Provider.of<Collections>(context).items;
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: true,
          floating: false,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Mes Collections'),
            background: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  color: Colors.white,
                )
              ],
            ),
          ),
          elevation: 10.0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ChangeNotifierProvider.value(
              value: collections[index],
              child: CollectionListItem(),
            ),
            childCount: collections.length,
          ),
        ),
      ],
    );
    // ListView.builder(
    //   itemBuilder: (context, index) => ChangeNotifierProvider.value(
    //     value: collections[index],
    //     child: CollectionListItem(),
    //   ),
    //   itemCount: collections.length,
    // );
  }
}
