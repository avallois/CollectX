import 'package:flutter/material.dart';

import '../widgets/profile/information/profile_user_info.dart';
import '../widgets/profile/collection_list/profile_collection_list_header.dart';
import '../widgets/profile/collection_list/profile_collection_list.dart';
// import '../widgets/collection_list.dart';

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
          ProfileUserInfo(),
          ProfileCollectionListHeader(),
          ProfileCollectionList(),
        ],
      ),
    );
  }
}
