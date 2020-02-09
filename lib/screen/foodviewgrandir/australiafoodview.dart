import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/australifood.dart';
import 'package:provider/provider.dart';

class AustraliaFoodView extends StatefulWidget {
  static const routeName = 'afv';

  @override
  _AustraliaFoodViewState createState() => _AustraliaFoodViewState();
}

class _AustraliaFoodViewState extends State<AustraliaFoodView> {
  static Widget _buildStar() {
    return Icon(
      Icons.star,
      color: Colors.yellow,
      size: 40,
    );
  }

  Widget _buildStack({String image, String title}) {
    return Stack(
      children: <Widget>[
        ExtendedImage.network(
          image,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        SafeArea(
          child: GridTile(
            header: Row(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.red,
                    ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            child: Text(''),
            footer: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.black54,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FittedBox(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Row(
                              children: <Widget>[
                                _buildStar(),
                                _buildStar(),
                                _buildStar(),
                                _buildStar(),
                                _buildStar(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final proId = ModalRoute.of(context).settings.arguments as String;
    final australi = Provider.of<Australia>(context)
        .australiaRecipes
        .firstWhere((pro) => pro.id == proId);
    return Scaffold(
      body: Container(
        child: _buildStack(
          image: australi.imageUrl,
          title: australi.title,
        ),
      ),
    );
  }
}
