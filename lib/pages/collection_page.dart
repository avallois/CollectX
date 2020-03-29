import 'package:app_collec/widgets/collection/collection_element_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/collection/collection_header.dart';
import '../providers/collections.dart';
import '../providers/collection_elements.dart';

// import '../widgets/collection/collection_element_list_item.dart';

class CollectionPage extends StatelessWidget {
  static const namedRoute = './collection';

  @override
  Widget build(BuildContext context) {
    final collectionId = ModalRoute.of(context).settings.arguments as String;
    final collection = Provider.of<Collections>(context).findById(collectionId);
    final collectionElements = Provider.of<CollectionElements>(context)
        .listByCollectionId(collectionId);
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(collection.title),
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
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CollectionElementListItem(
                    elementTitle: collectionElements[index].title,
                    elementDescription: collectionElements[index].description,
                    elementImageUrl: collectionElements[index].imageUrl,
                  );
                },
                itemCount: collectionElements.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return CollectionElementListItem(
                    elementTitle: collectionElements[index].title,
                    elementDescription: collectionElements[index].description,
                    elementImageUrl: collectionElements[index].imageUrl,
                  );
                },
                itemCount: collectionElements.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return CollectionElementListItem(
                    elementTitle: collectionElements[index].title,
                    elementDescription: collectionElements[index].description,
                    elementImageUrl: collectionElements[index].imageUrl,
                    pictured: false,
                  );
                },
                itemCount: collectionElements.length,
              ),
            ],
          ),
        ),
      ),
      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return index == 0
      //         ? CollectionDetailHeader(
      //             collectionTitle: collection.title,
      //             collectionDescription: collection.description,
      //             // collectionAuthor: collection.author,
      //           )
      //         : TabBarView(
      //             children: [
      //               CollectionElementListItem(
      //             elementTitle: collectionElements[index - 1].title,
      //             elementDescription:
      //                 collectionElements[index - 1].description,
      //             elementImageUrl: collectionElements[index - 1].imageUrl,
      //           ),
      //               Icon(Icons.directions_transit),
      //               Icon(Icons.directions_bike),
      //             ],
      //           );
      //   },
      //   itemCount: collectionElements.length + 1,
      // ),
    );
  }
}
