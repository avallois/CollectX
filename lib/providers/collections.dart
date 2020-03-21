import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import 'package:app_collec/providers/collection.dart';

class Collections with ChangeNotifier {
  List<Collection> _items = [
    Collection(
      id: 'c1',
      title: 'sneakers',
      description:
          'Voici une collection de sneakers vintage des 1980 avec les toutes première nikes.',
      author: 'John Caca',
    ),
    Collection(
      id: 'c2',
      title: 'bijoux',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      author: 'seuf de noich',
    ),
    Collection(
      id: 'c3',
      title: 'vêtements',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      author: 'luxury toto',
    ),
    Collection(
      id: 'c4',
      title: 'balle de golf',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      author: 'zizi le zozo',
    ),
  ];

  List<Collection> get items {
    return [..._items];
  }

  Collection findById(id) {
    return _items.firstWhere((collection) => collection.id == id);
  }
}
