import 'package:flutter/material.dart';

class ProfileUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultTotalFollowersTextStyle = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'User_ID_name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2.0),
                                child: Text('Name NAME NM'),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          margin: EdgeInsets.only(right: 15.0),
                          child: Container(
                              padding: EdgeInsets.all(5.0),
                              width: 65.0,
                              height: 65.0,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(bottom: 1.0),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: 'XXX',
                                          style: defaultTotalFollowersTextStyle,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'K',
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Total Followers',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                height: 70.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Bio',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                          'Yoyo wéwé, voici ma bio la famille comment ca se passe equipage'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
