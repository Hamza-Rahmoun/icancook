import 'package:flutter/material.dart';

class MoroccoFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  MoroccoFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Morocco with ChangeNotifier {
  List<MoroccoFood> _moroccoRecipes = [
    MoroccoFood(
      id: 'r1',
      title: 'Morroco',
      imageUrl:
          'https://www.thespruceeats.com/thmb/HZLiK-1sE3A7-vuNtEef-KPwBHw=/4000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mechoui-4000-x-3000-56a645e93df78cf7728c3209.jpg',
      codeFood: 'MA',
    ),
    MoroccoFood(
      id: 'r1',
      title: 'Morroco',
      imageUrl:
          'https://www.thespruceeats.com/thmb/HZLiK-1sE3A7-vuNtEef-KPwBHw=/4000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mechoui-4000-x-3000-56a645e93df78cf7728c3209.jpg',
      codeFood: 'MA',
    ),
    MoroccoFood(
      id: 'r1',
      title: 'Morroco',
      imageUrl:
          'https://www.thespruceeats.com/thmb/HZLiK-1sE3A7-vuNtEef-KPwBHw=/4000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mechoui-4000-x-3000-56a645e93df78cf7728c3209.jpg',
      codeFood: 'MA',
    ),
  ];

  List<MoroccoFood> get moroccoRecipes {
    return [..._moroccoRecipes];
  }
}
