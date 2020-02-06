import 'package:flutter/material.dart';

class ThailandFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  ThailandFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Thailand with ChangeNotifier {
  List<ThailandFood> _thailandRecipes = [
    ThailandFood(
      id: 'r1',
      title: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/2320556250_bcc7b86e4f_o.jpg',
      codeFood: 'MA',
    ),
  ];

  List<ThailandFood> get thailandRecipes {
    return [..._thailandRecipes];
  }
}
