import 'package:flutter/material.dart';

class FranceFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  FranceFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class France with ChangeNotifier {
  List<FranceFood> _franceRecipes = [
    FranceFood(
      id: 'r1',
      title: 'France',
      imageUrl:
          'https://www.france-hotel-guide.com/en/blog/wp-content/uploads/2018/09/hu%C3%AEtres.jpg',
      codeFood: 'MA',
    ),
  ];

  List<FranceFood> get franceRecipes {
    return [..._franceRecipes];
  }
}
