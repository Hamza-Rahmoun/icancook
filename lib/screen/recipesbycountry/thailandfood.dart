import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/australifood.dart';
import 'package:icancook/provider/recipesbycountry/chinafood.dart';
import 'package:icancook/provider/recipesbycountry/italyfood.dart';
import 'package:icancook/provider/recipesbycountry/moroccofood.dart';
import 'package:icancook/provider/recipesbycountry/thailandfood.dart';
import 'package:icancook/widgetscreen/recipesbycountry/thailandfood.dart';
import 'package:provider/provider.dart';

class ThailandCountry extends StatefulWidget {
  static const routeName = 'Th';
  @override
  _ThailandCountryState createState() => _ThailandCountryState();
}

class _ThailandCountryState extends State<ThailandCountry> {
  Widget _buildStory(
    String image,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 0.25,
                child: ExtendedImage.network(
                  image,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<Morocco>(context);
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final italy = Provider.of<Italy>(context);
    final thailand = Provider.of<Thailand>(context);

    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: height * 0.05,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                        text: 'You May ',
                        style: TextStyle(
                          color: Colors.green,
                        )),
                    TextSpan(
                      text: 'Also Like',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white,
                    Colors.black54,
                  ])),
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Row(
                        children: <Widget>[
                          _buildStory(australia.australiaRecipes[i].imageUrl,
                              australia.australiaRecipes[i].title),
                          _buildStory(italy.italyRecipes[i].imageUrl,
                              italy.italyRecipes[i].title),
                          _buildStory(china.chinaRecipes[i].imageUrl,
                              china.chinaRecipes[i].title),
                          _buildStory(morocco.moroccoRecipes[i].imageUrl,
                              morocco.moroccoRecipes[i].title),
                        ],
                      )),
            ),
            Container(
              height: height * 0.8,
              color: Colors.white,
              child: ListView.builder(
                itemCount: thailand.thailandRecipes.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: thailand.thailandRecipes[i],
                    child: ChangeNotifierProvider.value(
                        value: thailand.thailandRecipes[i],
                        child: ThailandWidget())),
              ),
            )
          ],
        ),
      ),
    );
  }
}
