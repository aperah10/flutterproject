import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/Widget/formWidget.dart';
import 'package:uis/models/itemmodel.dart';
import 'package:uis/screens/Imp/Listdata.dart';
import 'create_address_screen.dart';
import 'home_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  final dl = List.generate(15, (index) => CatModel.items);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'Cart', createPage: () => HomeScreen()),
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
              // return dataOfListView(product: CatModel.items[index]);
              return ListdataScreen(product: CatModel.items[index]);
            }),

             // SUBMIT BUTTON TO 
        Align( alignment: Alignment.bottomCenter,
          child:  SubmitButton(btnName: 'Continue', createPage: ()=>CreateAddressScreen())
            )
        ], )
    );
  }

 
}
 

//  class SubBtn extends StatelessWidget {
//    const SubBtn({Key? key}) : super(key: key);
 
//    @override
//    Widget build(BuildContext context) {
//      return Container(
//           margin: EdgeInsets.all(20.0),
//           alignment: Alignment.bottomCenter,
//           child: MaterialButton(
//             height: 50.0,
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => CreateAddressScreen()));
//             },
//             color: Color(0xff374ABE),
//             minWidth: double.maxFinite,
//             child: Text(
//               "Continue",
//               style: TextStyle(color: Colors.white, fontSize: 18.0),
//             ),
//           ),
//         );
//    }
//  }