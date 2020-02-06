import 'package:flutter/material.dart';

class PortugalFood with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String codeFood;
  PortugalFood({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Portugal with ChangeNotifier {
  List<PortugalFood> _portugalRecipes = [
    PortugalFood(
      id: 'r1',
      title: 'Portugal',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/04/CaldoVerde_BragaFoodTour_DayTripsFromPorto_AuthenticFoodQuest.jpg',
      codeFood: 'MA',
    ),
  ];

  List<PortugalFood> get portugalRecipes {
    return [..._portugalRecipes];
  }
}
