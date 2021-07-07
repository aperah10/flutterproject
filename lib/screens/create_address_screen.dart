import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/Widget/formWidget.dart';
import 'package:uis/screens/home_screen.dart';


class CreateAddressScreen extends StatefulWidget {
  @override
_CreateAddressScreenState createState() =>_CreateAddressScreenState();

}

class _CreateAddressScreenState extends State<CreateAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(titlename: 'Add Address', createPage: ()=>HomeScreen(),),
      body: SingleChildScrollView(
        child: initScreen(),
      ),
    );
  }

  Widget initScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // NameEdit text
            FieldF(hintText:'Name',inputType:TextInputType.name),
        // Address Line Edit text
        FieldF(hintText:'Address',inputType:TextInputType.streetAddress),

        // City Edit text
       FieldF(inputType: TextInputType.streetAddress, hintText:'City'),

        // Postal Code Edit text
       FieldF(inputType: TextInputType.multiline, hintText: 'PostalCode'),

        // Phone Number Edit text
      FieldF(inputType: TextInputType.phone, hintText: 'Phone Number'),

        // Login Button
        Center(child: SubmitButton(btnName: 'Address', createPage: ()=>HomeScreen()))
      ],
    );
  }
 


}