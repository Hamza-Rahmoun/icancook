import 'package:flutter/material.dart';

class PopularScreen extends StatefulWidget {
  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  Widget _buildStory(double bottomHeight, double bottomWidth,
      ColorFilter colorFilter, String title) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: MediaQuery.of(context).size.height * bottomHeight,
        width: MediaQuery.of(context).size.height * bottomWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/china.jpg'),
            fit: BoxFit.fill,
            colorFilter: colorFilter,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: <Widget>[
                  Expanded(child: _buildStory(0.2, 0.3, null, '')),
                  Expanded(child: _buildStory(0.2, 0.3, null, '')),
                ],
              ),
            ),
            Expanded(child: _buildStory(0.29, 0.1, null, '')),
          ],
        ),
        _buildStory(0.25, double.infinity,
            ColorFilter.mode(Colors.black54, BlendMode.darken), '+24'),
      ],
    );
  }
}
