import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';

import '../providers/collection.dart';
import '../pages/collection_detail_page.dart';

class CollectionListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collection = Provider.of<Collection>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(CollectionDetailPage.namedRoute, arguments: collection.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Card(
          elevation: 3,
          margin: EdgeInsets.all(6),
          child: Container(
            color: Colors.white,
            height: 120,
            child: ListTile(
              title:
              Padding(
                padding: const EdgeInsets.all(14.0),
                child:
                //Center(
                  //child:
                  AutoSizeText.rich(
                    TextSpan(text: collection.title.toUpperCase()),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, color: Colors.black),
                    minFontSize: 20,
                  ),
                //),
              ),
              subtitle: Text('By me'),
            ),
          ),
        ),
      ),
    );
  }
}
