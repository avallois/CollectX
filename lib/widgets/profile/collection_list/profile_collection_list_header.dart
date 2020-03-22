import 'package:flutter/material.dart';

class ProfileCollectionListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: true,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Collections'),
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.white,
            )
          ],
        ),
      ),
      elevation: 3.0,
      forceElevated: true,
    );
  }
}
