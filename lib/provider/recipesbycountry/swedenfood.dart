import 'package:flutter/material.dart';

class SwedenFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  SwedenFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Sweden with ChangeNotifier {
  List<SwedenFood> _swedenRecipes = [
    SwedenFood(
      id: 'r1',
      title: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/18918340424_1d44504fb5_k.jpg',
      codeFood: 'MA',
    ),
  ];

  List<SwedenFood> get swedenRecipes {
    return [..._swedenRecipes];
  }
}
