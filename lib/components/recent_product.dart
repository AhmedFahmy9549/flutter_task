import 'package:flutter/material.dart';
import 'package:flutter_task/models/product_model.dart';
import 'package:flutter_task/screens/product_details.dart';


class Product extends StatefulWidget {
  final List<ProductModel> dataList;

  Product(this.dataList);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateProduct();
  }
}

class StateProduct extends State<Product> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleProduct(
              prodName: widget.dataList[index].getName,
              prodPicture: widget.dataList[index].getPicture,
              prodOldPrice: widget.dataList[index].getOldPrice,
              prodPrice: widget.dataList[index].getPrice,
            ),
          );
        },
        itemCount: widget.dataList.length);
  }
}

class SingleProduct extends StatelessWidget {
  final String prodName;
  final String prodPicture;
  final int prodOldPrice;
  final int prodPrice;

  SingleProduct(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        prodName: prodName,
                        prodPicture: prodPicture,
                        prodOldPrice: prodOldPrice,
                        prodPrice: prodPrice,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          prodName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
