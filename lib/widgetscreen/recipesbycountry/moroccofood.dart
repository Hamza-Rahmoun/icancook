import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:icancook/provider/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class MoroccoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final morocco = Provider.of<MoroccoFood>(context);
    return Container(
      height: height * 0.3,
      child: GridTile(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedImage.network(
              morocco.imageUrl,
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
                  morocco.title,
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
