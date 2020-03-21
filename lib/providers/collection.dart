import 'package:flutter/foundation.dart';

class Collection with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String author;

  Collection({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.author,
  });
}