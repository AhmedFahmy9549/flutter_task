import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home_page.dart';



void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      debugShowCheckedModeBanner: false,
home:HomePage(),
    );
  }
}
