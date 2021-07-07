import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/Widget/formWidget.dart';

import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();

}

class LunchState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'ProfilePage', createPage: ()=>HomeScreen()),
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
        FieldF(inputType: TextInputType.name, hintText: 'Name'),
         FieldF(inputType: TextInputType.multiline, hintText: 'Gender'),
          FieldF(inputType: TextInputType.phone, hintText: 'Phone Number'),
           FieldF(inputType: TextInputType.emailAddress, hintText: 'EmailAddress'),
            FieldF(inputType: TextInputType.streetAddress, hintText: 'Address'),
             FieldF(inputType: TextInputType.streetAddress, hintText: 'City'),
       

        SubmitButton(btnName: 'Update', createPage: ()=>ProfileScreen())

        
       

        
      ],
    );
  }


 

}