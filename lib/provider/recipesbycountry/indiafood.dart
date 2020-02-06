import 'package:flutter/material.dart';

class IndiaFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  IndiaFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class India with ChangeNotifier {
  List<IndiaFood> _indiaRecipes = [
    IndiaFood(
      id: 'r1',
      title: 'India',
      imageUrl:
          'https://www.thespruceeats.com/thmb/rxrMs3ixL4o70VTdukRLhUSGw2A=/3264x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-686769861-59fa95904e4f7d001af7d0d7.jpg',
      codeFood: 'MA',
    ),
  ];

  List<IndiaFood> get indiaRecipes {
    return [..._indiaRecipes];
  }
}
