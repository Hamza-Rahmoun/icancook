import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/australifood.dart';
import 'package:icancook/provider/recipesbycountry/chinafood.dart';
import 'package:icancook/provider/recipesbycountry/italyfood.dart';
import 'package:icancook/provider/recipesbycountry/moroccofood.dart';
import 'package:icancook/widgetscreen/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class MoroccoCountry extends StatefulWidget {
  static const routeName = 'recipescountry';

  @override
  _MoroccoCountryState createState() => _MoroccoCountryState();
}

class _MoroccoCountryState extends State<MoroccoCountry> {
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
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
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
              color: Colors.grey,
              height: height * 0.2,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: height * 0.7,
                child: ListView.builder(
                  itemCount: morocco.moroccoRecipes.length,
                  itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: morocco.moroccoRecipes[i], child: MoroccoWidget()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
