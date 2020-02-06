import 'package:flutter/material.dart';

class ItalyFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  ItalyFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Italy with ChangeNotifier {
  List<ItalyFood> _italyRecipes = [
    ItalyFood(
      id: 'r1',
      title: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/assets/images/asset_pictures/1426577842-1858323.jpeg',
      codeFood: 'MA',
    ),
  ];

  List<ItalyFood> get italyRecipes {
    return [..._italyRecipes];
  }
}
