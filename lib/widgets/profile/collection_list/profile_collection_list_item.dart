import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';

import '../../../providers/collection.dart';
import '../../../pages/collection_page.dart';

class ProfileCollectionListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collection = Provider.of<Collection>(context);

    TextStyle defaultSubtitleTextStyle = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(CollectionPage.namedRoute,
            arguments: collection.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Card(
          color: Colors.blue,
          elevation: 1.0,
          margin: EdgeInsets.all(2.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
            child: Container(
              height: 100,
              child: ListTile(
                title: Container(
                  height: 50.0,
                  child: AutoSizeText.rich(
                    TextSpan(text: collection.title),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                    minFontSize: 20.0,
                  ),
                ),
                isThreeLine: true,
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'XXX',
                        style: defaultSubtitleTextStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'K',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: ' Followers',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 120,
                      height: 35.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          "S'ABONNER",
                        ),
                        color: Colors.black,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
