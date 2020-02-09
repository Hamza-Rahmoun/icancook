import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/chinafood.dart';
import 'package:provider/provider.dart';

class ChinaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final china = Provider.of<ChinaFood>(context);
    return Container(
      height: height * 0.3,
      child: GridTile(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedImage.network(
              china.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          footer: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black54,
              child: ListTile(
                title: Text(
                  china.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                  color: Colors.red,
                ),
              ),
            ),
          )),
    );
  }
}
