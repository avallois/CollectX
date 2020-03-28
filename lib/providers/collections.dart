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
      // author: 'John Caca',
    ),
    Collection(
      id: 'c2',
      title: 'bijoux',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      // author: 'seuf de noich',
    ),
    Collection(
      id: 'c3',
      title: 'vêtements',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      // author: 'luxury toto',
    ),
    Collection(
      id: 'c4',
      title: 'balle de golf de nice orange wewe la mif dejn dnej dekeieied dje',
      description:
          'Dior, Chanel, Gucci ou encore Louis Vuitton, bienvenu dans une superbe collection que je fais depuis des annees maintenant.',
      // author: 'zizi le zozo',
    ),
    Collection(
      id: 'c5',
      title: 'Vintage 100',
      description:
          'Voici une collection de mon cul jdkjqshjkdshqkjhkdjqsqkjscjnckjncqjksnd.',
      // author: 'Couilloss',
    ),
    Collection(
      id: 'c6',
      title: 'New gen',
      description:
          'Voici une collection de mes burnes jdkjqshjkdshqkjhkdjqsqkjscjnckjncqjksnd.',
      // author: 'John Caca',
    ),
    Collection(
      id: 'c7',
      title: 'Posters',
      description:
          'Voici une collection de prout des années 1950.',
      // author: 'Caca Jean',
    ),
    Collection(
      id: 'c8',
      title: 'Lacets',
      description:
          'toutes première nikes walla lardim.',
      // author: 'John Seuf',
    ),
  ];

  List<Collection> get items {
    return [..._items];
  }

  Collection findById(id) {
    return _items.firstWhere((collection) => collection.id == id);
  }
}
