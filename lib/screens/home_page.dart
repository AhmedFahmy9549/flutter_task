import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_task/components/list_horizontal.dart';
import 'package:flutter_task/components/recent_product.dart';
import 'package:flutter_task/models/product_model.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> productList = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productList = setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart())))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            //Header
            new UserAccountsDrawerHeader(
              accountName: Text("Ahmed Fahmy"),
              accountEmail: Text("ahmedmf95@gmai.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //Body
            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("My account"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("My Orders"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                )),
            InkWell(
                onTap:
                    () {} /*=> Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart())),*/
                ,
                child: new ListTile(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cart())),
                  title: Text("Shopping cart"),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Favourites"),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                )),

            Divider(),

            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Setting"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                )),

            InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("About"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                )),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          //Image Carousel initialized
          getImageCarousel(),
          new Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categroies",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )),

          //initialize Horizontal listView
          HorizontalList(),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Produts",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          //initialize Recent Products
          Flexible(child: Product(productList)),
        ],
      ),
    );
  }

  Widget getImageCarousel() {
    return Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/c1.jpg"),
          AssetImage("assets/images/m1.jpeg"),
          AssetImage("assets/images/w4.jpeg"),
          AssetImage("assets/images/w1.jpeg"),
        ],
        autoplay: true,
        showIndicator: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
      ),
    );
  }

  List<ProductModel> setData() {
    List<ProductModel> cardProductList = new List();

    cardProductList.add(new ProductModel(
        name: "Blazer",
        picture: "assets/images/products/blazer1.jpeg",
        price: 85,
        oldPrice: 120,
        size: "M",
        color: "Red",
        quantity: 1));
    cardProductList.add(new ProductModel(
        name: "Dress",
        picture: "assets/images/products/dress2.jpeg",
        price: 145,
        oldPrice: 210,
        size: "L",
        color: "Red",
        quantity: 2));

    cardProductList.add(new ProductModel(
        name: "Shoe",
        picture: "assets/images/products/hills1.jpeg",
        price: 70,
        oldPrice: 80,
        size: "XL",
        color: "Blue",
        quantity: 1));
    cardProductList.add(new ProductModel(
        name: "Blazer",
        picture: "assets/images/products/blazer2.jpeg",
        price: 120,
        oldPrice: 150,
        size: "S",
        color: "Red",
        quantity: 2));
    cardProductList.add(new ProductModel(
        name: "Pants",
        picture: "assets/images/products/pants2.jpeg",
        price: 140,
        oldPrice: 195,
        size: "M",
        color: "Black",
        quantity: 1));
    cardProductList.add(new ProductModel(
        name: "Red Dress",
        picture: "assets/images/products/dress1.jpeg",
        price: 90,
        oldPrice: 130,
        size: "L",
        color: "Green",
        quantity: 2));

    return cardProductList;
  }
}
