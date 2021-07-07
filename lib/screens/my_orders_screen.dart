import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/models/itemmodel.dart';
import 'package:uis/screens/Imp/Listdata.dart';
import 'package:uis/screens/home_screen.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
 _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrdersScreen> {

  @override
    final dl = List.generate(15, (index) => CatModel.items);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'MyOrderPage', createPage: ()=>HomeScreen(),),
       
      body: initScreen(),
    );
  }

  initScreen() {
    return new Container(
        child: Stack(
          children: <Widget>[
            ListView.builder(
             itemCount: dl.length,
            itemBuilder: (context, index) {
              // print(index);
              return ListdataScreen(product: CatModel.items[index], 
              iconname: 'refresh');
            }
            ),
          ],
        )


    );
  }

  
  // dataOfListView({required Item product}) {
  //   return Container(
  //       child: Card(
  //         margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
  //         color: Color(0xffEEEEEE),
  //         child: ListTile(
  //           // on ListItem clicked
  //           onTap: () {},

  //           // Image of ListItem
  //           leading: Container(
  //             child: Image(
  //               fit: BoxFit.fitHeight,
  //               image: AssetImage(product.picurl),
  //             ),
  //           ),

  //           // Lists of titles
  //           title: Container(
  //             margin: EdgeInsets.only(top: 10.0),
  //             height: 80.0,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Container(
  //                   padding: EdgeInsets.only(bottom: 2.0),
  //                   child: Text(
  //                          product.name,
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 20.0
  //                     ),
  //                   ),
  //                 ),

  //                 Container(
  //                   padding: EdgeInsets.only(bottom: 3.0),
  //                   child: Text(
  //                     product.id.toString(),
  //                     style: TextStyle(
  //                     ),
  //                   ),
  //                 ),

  //                 Container(
  //                   padding: EdgeInsets.only(bottom: 3.0),
  //                   child: Text(
  //                     product.price.toString(),
  //                     style: TextStyle(
  //                         color: Color(0xff374ABE)
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),

  //           trailing: Container(
  //             child: Icon(
  //               Icons.refresh,
  //               size: 30,
  //               color: Color(0xff374ABE),
  //             ),
  //           ),
  //         ),
  //       )
  //   );
  // }
}