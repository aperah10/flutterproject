import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uis/new%20Screens/product_list.dart';
import 'Logic/product/bloc/productpage_bloc.dart';
import 'Widget/drawer/dra.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home ',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:MyDrawerList(), 
      debugShowCheckedModeBanner: false,
    );
  }
}


