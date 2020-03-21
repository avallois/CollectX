import 'package:flutter/material.dart';

class CollectionElement with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final List<String> collections;
  final String imageUrl;

  CollectionElement({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.collections,
    @required this.imageUrl,
  });
}
