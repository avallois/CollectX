import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CollectionDetailHeader extends StatelessWidget {
  final String collectionTitle;
  final String collectionDescription;
  final String collectionAuthor;

  CollectionDetailHeader({
    @required this.collectionTitle,
    @required this.collectionDescription,
    @required this.collectionAuthor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Center(
              child: AutoSizeText.rich(
                TextSpan(text: collectionTitle.toUpperCase()),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 120, color: Colors.black),
                minFontSize: 20,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
                left: BorderSide(color: Colors.grey),
                right: BorderSide(color: Colors.grey),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Description',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0,
                maxHeight: 150,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  collectionDescription,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0,
                maxHeight: 150,
                maxWidth: 50,
                minWidth: 0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText.rich(
                  TextSpan(
                    text: 'Collection by ',
                    children: <TextSpan>[
                      TextSpan(
                        text: collectionAuthor,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
