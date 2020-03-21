import 'package:flutter/material.dart';

import '../widgets/collection_list.dart';

class CollectionOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collections'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            iconSize: 35,
            onPressed: () {},
          ),
        ],
      ),
      body: CollectionList(),
    );
  }
}
