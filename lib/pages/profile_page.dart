import 'package:flutter/material.dart';

import '../widgets/profile/header/profile_header.dart';
import '../widgets/profile/collections_list/collections_list.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil: Username'),
        centerTitle: true,
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
      body: CustomScrollView(
        slivers: <Widget>[
          ProfileHeader(),
          CollectionsList(),
        ],
      ),
    );
  }
}
