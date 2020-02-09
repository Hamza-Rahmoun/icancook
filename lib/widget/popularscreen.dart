import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/australifood.dart';
import 'package:icancook/provider/recipesbycountry/chinafood.dart';
import 'package:icancook/provider/recipesbycountry/japanfood.dart';
import 'package:icancook/provider/recipesbycountry/moroccofood.dart';
import 'package:icancook/screen/foodviewgrandir/australiafoodview.dart';
import 'package:icancook/screen/foodviewgrandir/chinafoodview.dart';
import 'package:icancook/screen/foodviewgrandir/japanfoodview.dart';
import 'package:provider/provider.dart';

class PopularScreen extends StatefulWidget {
  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  Widget _buildStory({
    double bottomHeight,
    double bottomWidth,
    Color colorFilter,
    String title,
    String image,
    String route,
    String id,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route, arguments: id);
        },
        child: Container(
            height: MediaQuery.of(context).size.height * bottomHeight,
            width: MediaQuery.of(context).size.height * bottomWidth,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            child: Stack(
              children: <Widget>[
                ExtendedImage.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: double.infinity,
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                  colorBlendMode: BlendMode.darken,
                  color: colorFilter,
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final morocco = Provider.of<Morocco>(context);
    final japan = Provider.of<Japan>(context);
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, i) => Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: _buildStory(
                                bottomHeight: 0.2,
                                bottomWidth: 0.3,
                                colorFilter: null,
                                title: '',
                                image: australia.australiaRecipes[i].imageUrl,
                                route: '${AustraliaFoodView.routeName}',
                                id: '${australia.australiaRecipes[i].id}'),
                          ),
                          Expanded(
                            child: _buildStory(
                                bottomHeight: 0.2,
                                bottomWidth: 0.3,
                                colorFilter: null,
                                title: '',
                                image: china.chinaRecipes[i].imageUrl,
                                route: '${ChinaFoodView.routeName}'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: _buildStory(
                          bottomHeight: 0.29,
                          bottomWidth: 0.1,
                          colorFilter: null,
                          title: '',
                          image: japan.japanRecipes[i].imageUrl,
                          route: '${JapanFoodView.routeName}'),
                    ),
                  ],
                ),
                _buildStory(
                  bottomHeight: 0.25,
                  bottomWidth: double.infinity,
                  colorFilter: Colors.black54,
                  title: '',
                  image: morocco.moroccoRecipes[i].imageUrl,
                ),
              ],
            ));
  }
}
