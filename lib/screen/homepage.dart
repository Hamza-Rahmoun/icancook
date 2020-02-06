import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/cuntryfood.dart';
import 'package:icancook/widget/newscreen.dart';
import 'package:icancook/widget/popularscreen.dart';
import 'package:icancook/widget/recommendedscreen.dart';
import 'package:icancook/widgetscreen/foodcountry.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final foodItem = Provider.of<Food>(context);
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.sort,
                      size: 30,
                      color: Colors.green,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 2,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: height < 500
                      ? height * 0.25
                      : MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.topLeft,
                  child: RichText(
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                      children: [
                        TextSpan(
                            text: 'Hello ,',
                            style: TextStyle(
                              color: Colors.red,
                            )),
                        TextSpan(text: 'What Are You '),
                        TextSpan(
                          text: 'Looking For ...',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Food Country',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height < 500 ? height * 0.25 : height * 0.2,
                  child: ListView.builder(
                    itemCount: foodItem.food.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                        value: foodItem.food[i],
                        child: FoodCountryWidget(foodItem.food[i].pressed)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height < 500 ? height * 0.1 : height * 0.05,
                  child: Text(
                    'VIEW ALL -',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  height: height < 500 ? height * 0.1 : height * 0.05,
                  child: TabBar(
                    indicatorColor: Colors.green,
                    indicatorWeight: 3,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: <Widget>[
                      Tab(
                        text: 'Popular',
                      ),
                      Tab(
                        text: 'New',
                      ),
                      Tab(
                        text: 'Recommended',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.58,
                  child: TabBarView(
                    children: <Widget>[
                      PopularScreen(),
                      NewScreen(),
                      RecommendedScreen(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
