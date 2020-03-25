import 'package:flutter/material.dart';

class ProfileCollectionListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(20.0),
      child: SliverAppBar(
        snap: false,
        pinned: false,
        floating: false,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('Collections (X)'),
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
      ),
    );
  }
}
