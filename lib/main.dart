import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './pages/collection_overview_page.dart';
import './pages/collection_detail_page.dart';
import './providers/collections.dart';
import './providers/collection_elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        home: CollectionOverviewPage(),
        routes: {
          CollectionDetailPage.namedRoute: (ctx) => CollectionDetailPage(),
        },
      ),
    );
  }
}
