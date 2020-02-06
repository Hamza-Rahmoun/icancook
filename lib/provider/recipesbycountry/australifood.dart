import 'package:flutter/material.dart';

class AustraliaFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  AustraliaFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Australia with ChangeNotifier {
  List<AustraliaFood> _australiaRecipes = [
    AustraliaFood(
      id: 'r1',
      title: 'Australia',
      imageUrl:
          'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F120405074950-roasted-leg-of-lamb.jpg',
      codeFood: 'MA',
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Australia',
      imageUrl:
          'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F120405074950-roasted-leg-of-lamb.jpg',
      codeFood: 'MA',
    ),
  ];

  List<AustraliaFood> get australiaRecipes {
    return [..._australiaRecipes];
  }
}
