import 'package:flutter/material.dart';

class CollectionElementListItem extends StatelessWidget {
  final String elementTitle;
  final String elementDescription;
  final String elementImageUrl;

  CollectionElementListItem({
    @required this.elementTitle,
    @required this.elementDescription,
    @required this.elementImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0.0, right: 0.0, bottom: 45.0),
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.network(
              elementImageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 35.0,
            padding: EdgeInsets.all(7.0),
            width: double.infinity,
            child: Text(
              elementTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 7.0),
            width: double.infinity,
            child: Text(
              elementDescription,
              style: TextStyle(color: Colors.grey),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black26),
              ),
            ),
          ),
          // SizedBox(
          //   height: 55.0,
          // )
        ],
      ),
    );
  }
}
