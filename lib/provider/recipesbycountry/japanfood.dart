import 'package:flutter/material.dart';

class JapanFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  JapanFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Japan with ChangeNotifier {
  List<JapanFood> _japanRecipes = [
    JapanFood(
      id: 'r1',
      title: 'Japan',
      imageUrl:
          'https://images.japancentre.com/page_elements/image1s/1513/original/sushi-bars-best-japanese-food.jpg?1470240553',
      codeFood: 'MA',
    ),
  ];

  List<JapanFood> get japanRecipes {
    return [..._japanRecipes];
  }
}
