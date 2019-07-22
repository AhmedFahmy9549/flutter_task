import 'package:flutter/material.dart';

import 'home_page.dart';

class ProductDetails extends StatefulWidget {
  final String prodName;
  final String prodPicture;
  final int prodPrice;
  final int prodOldPrice;

  ProductDetails(
      {this.prodName, this.prodPicture, this.prodPrice, this.prodOldPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title:InkWell(child: Text("ShopApp"),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HomePage();
          }));
        }),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prodPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prodName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "\$${widget.prodOldPrice}",
                            style: TextStyle(
                                fontSize: 18.0,
                                decoration: TextDecoration.lineThrough),
                          )),
                      Expanded(
                        child: Text(
                          "\$${widget.prodPrice}",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    elevation: 0.2,
                    onPressed: sizeAlertDialog,
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Size"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    elevation: 0.2,
                    onPressed: colorAlertDialog,
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Color"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    elevation: 0.2,
                    onPressed:  qtyAlertDialog,
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Qty"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  elevation: 0.2,
                  textColor: Colors.white,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: Icon(Icons.shopping_cart),
              ),
              IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: Icon(Icons.favorite_border),
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),

          Row(
            children: <Widget>[
              Padding(
                padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product name",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.prodName),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product brand",style: TextStyle(color: Colors.grey),),
              ),  Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: Text("Product condition",style: TextStyle(color: Colors.grey),),
              ),  Padding(padding: EdgeInsets.all(5.0),
                child: Text("NEW"),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Similar products"),
          ),
          Container(
            height: 380,
            child: _SimilarProductDetails(),
          )
        ],
      ),
    );
  }

  sizeAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Size"),
            content: Text("Choose the size"),
            actions: <Widget>[
              new MaterialButton(onPressed: () {
                Navigator.of(context).pop(context);
              },child: Text("close",),)
            ],
          );
        });
  }

  colorAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Color"),
            content: Text("Choose the Color"),
            actions: <Widget>[
              new MaterialButton(onPressed: () {
                Navigator.of(context).pop(context);
              },child: Text("close",))
            ],
          );
        });
  }

  qtyAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Quantity"),
            content: Text("Choose the Quantity"),
            actions: <Widget>[
              new MaterialButton(onPressed: () {
                Navigator.of(context).pop(context);
              },child: Text("close",))
            ],
          );
        });
  }
}

class _SimilarProductDetails extends StatelessWidget{
  List<Map<String, dynamic>> productList = [

    {
      "name": "Shoe",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProduct(
            prodName: productList[index]["name"],
            prodPicture: productList[index]["picture"],
            prodOldPrice: productList[index]["old_price"],
            prodPrice: productList[index]["price"],
          );
        },
        itemCount: productList.length);

  }
}

class SimilarSingleProduct extends StatelessWidget {
  final String prodName;
  final String prodPicture;
  final int prodOldPrice;
  final int prodPrice;

  SimilarSingleProduct(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero1"),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context)=>ProductDetails(
                prodName: prodName,prodPicture: prodPicture,prodOldPrice: prodOldPrice,prodPrice: prodPrice,
              ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          prodName,
                          style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      title: Text(
                        "\$$prodPrice",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                            fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prodOldPrice",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prodPicture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

