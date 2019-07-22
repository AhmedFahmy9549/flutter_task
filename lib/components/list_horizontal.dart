import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 100,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              catImage: "assets/images/cats/tshirt.png",
              catText: "shirt",
            ),
            Category(
              catImage: "assets/images/cats/dress.png",
              catText: "dress",
            ),

            Category(
              catImage: "assets/images/cats/jeans.png",
              catText: "pants",
            ),

            Category(
              catImage: "assets/images/cats/formal.png",
              catText: "formal",
            ),
            Category(
              catImage: "assets/images/cats/informal.png",
              catText: "informal",
            ),

            Category(
              catImage: "assets/images/cats/shoe.png",
              catText: "shoe",
            ),
            Category(
              catImage: "assets/images/cats/accessories.png",
              catText: "accessories",
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String catText;
  final String catImage;

  Category({this.catText, this.catImage});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              catImage,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
                 alignment: Alignment.topCenter,
                child: Text(catText,style: new TextStyle(fontSize: 15,fontWeight:FontWeight.w900),)),
          ),
        ),
      ),
    );
  }
}
