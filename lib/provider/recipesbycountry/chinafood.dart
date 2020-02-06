import 'package:flutter/material.dart';

class ChinaFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  ChinaFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class China with ChangeNotifier {
  List<ChinaFood> _chinaRecipes = [
    ChinaFood(
      id: 'r1',
      title: 'China',
      imageUrl:
          'https://images.chinahighlights.com/allpicture/2019/11/a47d9323b7ae409ba96e628d_894x596.jpg',
      codeFood: 'MA',
    ),
  ];

  List<ChinaFood> get chinaRecipes {
    return [..._chinaRecipes];
  }
}
