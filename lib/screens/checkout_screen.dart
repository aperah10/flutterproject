import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/Widget/formWidget.dart';
import 'package:uis/models/itemmodel.dart';
import 'package:uis/screens/Imp/Listdata.dart';
import 'add_to_cart_screen.dart';

import 'my_orders_screen.dart';

class CheckoutScreen extends StatefulWidget {
  @override
 _CheckoutScreenState createState() =>  _CheckoutScreenState();

}

class  _CheckoutScreenState extends State<CheckoutScreen> {
  @override

  final dl = List.generate(15, (index) => CatModel.items);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'CheckOut', createPage: ()=>CartScreen()),
      body: initScreen()
    );
  }

  initScreen() {
    return new Container(
        child: Wrap(
          children: <Widget>[
            Container(
              height: 310.0,
              child: ListView.builder(
                itemCount: dl.length,
            itemBuilder: (context, index) {
              print(index);
              return ListdataScreen(product: CatModel.items[index]);
            }
              ),
            ),

            Container(
              padding: EdgeInsets.only( bottom:5.0,right: 30.0, left: 30.0),
              child: Text(
                "Shewrapara, Mirpur, Dhaka-1216, House no: 938, Road: 9",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),
              )
            ),

            detCheck(titlename: 'BestSale', price: '1330'),

            detCheck(titlename: 'Discount', price: '10%'),

            detCheck(titlename: 'Shippment', price :'70'),

            detCheck(titlename: 'Total', price: '170'),

            Center(
              child: SubmitButton(btnName: 'Buy', createPage: ()=>MyOrdersScreen()),
            ),

          ],
        )
    );
  }
 
//  DETAILS OF CHECK OUT 
  Widget detCheck({required String titlename, required String price }) {
    return Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom:5.0 ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                   titlename,
                    style: TextStyle(
                        fontSize: 18.0,
                    ),
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          );
  }

  

}