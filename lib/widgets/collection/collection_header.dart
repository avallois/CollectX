import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CollectionDetailHeader extends StatelessWidget {
  final String collectionTitle;
  final String collectionDescription;
  // final String collectionAuthor;

  CollectionDetailHeader({
    @required this.collectionTitle,
    @required this.collectionDescription,
    // @required this.collectionAuthor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 90,
              width: double.infinity,
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
              width: double.infinity,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 0,
                  maxHeight: 150,
                  maxWidth: 50,
                  minWidth: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
                  child: AutoSizeText.rich(
                    TextSpan(
                      text: 'Collection by ',
                      children: <TextSpan>[
                        TextSpan(
                          // text: collectionAuthor,
                          text: 'USER NAME',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.ellipsis,
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
          ],
        ),
      ),
    );
  }
}
