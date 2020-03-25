import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';

import '../../../providers/collection.dart';
import '../../../pages/collection_detail_page.dart';

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
        Navigator.of(context).pushNamed(CollectionDetailPage.namedRoute,
            arguments: collection.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Card(
          color: Colors.deepPurple,
          elevation: 1.0,
          margin: EdgeInsets.all(3.0),
          child: Container(
            height: 100,
            child: ListTile(
              // isThreeLine: true,
              title: 
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0, bottom: 0),
              //   child: 
                AutoSizeText.rich(
                  TextSpan(text: collection.title.toUpperCase()),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                  minFontSize: 20,
                ),
              // ),
              subtitle: Container(
                child: Row(
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
                            text: ' followers',
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
                      height: 30.0,
                      child: RaisedButton(
                        child: Text(
                          "S'ABONNER",
                          // style: TextStyle(fontSize: 2.0),
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
