import 'package:flutter/material.dart';
import 'package:flutter_task/components/cart_products.dart';

import 'home_page.dart';


class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: ()=>Navigator.push(context,
              MaterialPageRoute(builder: (context)=> HomePage())),
          child: Text("Cart"),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Check out"),
              ),
            )
          ],
        ),
      ),
    );
  }

}