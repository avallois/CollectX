import 'package:flutter/material.dart';

import './collection_element.dart';

class CollectionElements with ChangeNotifier {
  List<CollectionElement> _items = [
    CollectionElement(
      id: 'ce1',
      title: 'Air Max 500',
      description: 'Chaussure inestimable',
      collections: [
        'c1',
        'c3',
      ],
      imageUrl:
          'https://www.cdiscount.com/pdt2/6/2/0/1/700x700/mp29685620/rw/baskets-balenciaga-speed-trainer-runner-noir-53035.jpg',
    ),
    CollectionElement(
      id: 'ce2',
      title: 'Yeezy 350',
      description: 'Chaussure Adidas x Kanye West',
      collections: [
        'c1',
        'c3',
      ],
      imageUrl:
          'https://image.shutterstock.com/image-photo/white-transparent-leaf-on-mirror-260nw-1029171697.jpg',
    ),
    CollectionElement(
      id: 'ce3',
      title: 'Rebook ZeyZey',
      description: 'La chaussure de la zeyzey mi amigo zoloya',
      collections: [
        'c1',
        'c2',
        'c3',
      ],
      imageUrl:
          'https://images.math.cnrs.fr/IMG/png/section8-image.png',
    ),
    CollectionElement(
      id: 'ce4',
      title: 't-shit Nike x Louis Vuitton',
      description:
          'Tema cette dinguerie incroyable!, en plus il est toujours dans un bon état wesh starfoulahhh!',
      collections: [
        'c3',
      ],
      imageUrl:
          'https://www.cdiscount.com/pdt2/6/2/0/1/700x700/mp29685620/rw/baskets-balenciaga-speed-trainer-runner-noir-53035.jpg',
    ),
    CollectionElement(
      id: 'ce5',
      title: 'Tony tony golfa',
      description: 'Les chaussure de golf les plus moche au monde et puis meeeeerde comment on fait blablablab ouai ouai sisi osfqjjslkdj lqkj dkjsf sofs!',
      collections: [
        'c1',
        'c3',
        'c4',
      ],
      imageUrl:
          'https://images.unsplash.com/photo-1533299346856-b1a85808f2ec?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgbs',
    ),
    CollectionElement(
      id: 'ce6',
      title: 'Diamand plaqué 500k',
      description: 'wallah kcé vré zé rien volé je le jure',
      collections: [
        'c2',
      ],
      imageUrl:
          'https://www.cdiscount.com/pdt2/6/2/0/1/700x700/mp29685620/rw/baskets-balenciaga-speed-trainer-runner-noir-53035.jpg',
    ),
    CollectionElement(
      id: 'ce7',
      title: 'bague plaqué or 200k',
      description: 'wallah kcé vré zé rien volé je le jure',
      collections: [
        'c2',
      ],
      imageUrl:
          'https://www.cdiscount.com/pdt2/6/2/0/1/700x700/mp29685620/rw/baskets-balenciaga-speed-trainer-runner-noir-53035.jpg',
    ),
  ];

  List<CollectionElement> get items {
    return [..._items];
  }

  List<CollectionElement> listByCollectionId(collectionId) {
    return items.where((item) => item.collections.contains(collectionId)).toList();
  }
}
