import 'package:flutter/material.dart';

class ProfileUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: false,
      floating: false,
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Colors.black12,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 20.0),
                    width: 220.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black12),
                      bottom: BorderSide(width: 1.0, color: Colors.black12),
                    )),
                    child: Container(
                      margin: EdgeInsets.only(top: 5.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('User_ID_name', style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(
                            margin: EdgeInsets.only(top: 2.0),
                            child: Text('Name NAME NM'),
                          )
                        ],
                      ), //ADD COLUMN
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
