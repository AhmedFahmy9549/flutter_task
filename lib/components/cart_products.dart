import 'package:flutter/material.dart';


class CartProducts extends StatefulWidget {


  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  List<Map<String, dynamic>> cardProductList = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantaty": 1
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress1.jpeg",
      "price": 50,
      "size": "L",
      "color": "Red",
      "quantaty": 1
    },
    {
      "name": "Shoe",
      "picture": "assets/images/products/hills1.jpeg",
      "price": 30,
      "size": "S",
      "color": "Red",
      "quantaty": 2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cardProductList.length,
        itemBuilder: (context, index) {
          return SingleCartProducts(
            cartProductName: cardProductList[index]["name"],
            cartProductPicture: cardProductList[index]["picture"],
            cartProductPrice: cardProductList[index]["price"],
            cartProductSize: cardProductList[index]["size"],
            cartProductColor: cardProductList[index]["color"],
            cartProductQuantity: cardProductList[index]["quantaty"],
          );
        });
  }
}

class SingleCartProducts extends StatelessWidget {
  final String cartProductName;
  final String cartProductPicture;
  final String cartProductSize;
  final String cartProductColor;
  final int cartProductPrice;
  final int cartProductQuantity;

  SingleCartProducts(
      {this.cartProductName,
        this.cartProductPicture,
        this.cartProductSize,
        this.cartProductColor,
        this.cartProductPrice,
        this.cartProductQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              leading: Image.asset(
                cartProductPicture,
              ),
              title: new Text(cartProductName),
              subtitle: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                        child: new Text("Size:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                        child: new Text(
                          cartProductSize,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 5.0, 5.0, 5.0),
                        child: new Text("Color:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 5.0),
                        child: new Text(
                          cartProductColor,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "\$$cartProductPrice",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
                new Text("$cartProductQuantity"),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
