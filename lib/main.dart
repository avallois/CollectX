import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

import './pages/profile_page.dart';
import './pages/collection_page.dart';
import './providers/collections.dart';
import './providers/collection_elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Collections(),
        ),
        ChangeNotifierProvider.value(
          value: CollectionElements(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: ProfilePage(),
        routes: {
          CollectionPage.namedRoute: (ctx) => CollectionPage(),
        },
      ),
    );
  }
}
