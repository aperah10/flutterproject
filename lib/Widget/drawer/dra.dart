import 'package:flutter/material.dart';
import 'package:uis/new%20Screens/product_list.dart';
import 'package:uis/screens/Extra/editprofile.dart';
import 'package:uis/screens/Extra/extprofile.dart';
import 'package:uis/screens/add_to_cart_screen.dart';
import 'package:uis/screens/auth_screen.dart';
import 'package:uis/screens/checkout_screen.dart';
import 'package:uis/screens/confirm_screen.dart';
import 'package:uis/screens/create_address_screen.dart';
import 'package:uis/screens/product_list_page.dart';
import 'package:uis/screens/home_screen.dart';
import 'package:uis/screens/list_item_detail_screen.dart';
import 'package:uis/screens/login_screen.dart';
import 'package:uis/screens/my_orders_screen.dart';
import 'package:uis/screens/payment_screen.dart';
import 'package:uis/screens/profile_screen.dart';
import 'package:uis/screens/signup_screen.dart';
import 'package:uis/screens/splash_screen.dart';



class MyDrawerList extends StatefulWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  _MyDrawerListState createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return 
           SizedBox( width: MediaQuery.of(context).size.width * 0.65,
           
          child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

                _createDrawerHeader() ,
        // top  level widgets
        itemList(
          context,
          ()=> ProductListScr(),
          title: 'ProductListScr',
          icon: Icons.pages_outlined
        ),
        itemList(
          context,
          ()=> CartScreen(),
          title: 'addtocart',
          icon: Icons.shopping_bag,
        ),
         itemList(
          context,
          ()=> ProfilePage(),
          title: 'New Profile Page ',
          icon: Icons.shopping_bag,
        ),
         itemList(
          context,
          ()=> ShowProfileScreen(),
          title: 'Show Profile Page ',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> AuthenticationScreen(),
          title: 'authscr',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> CheckoutScreen(),
          title: 'checkout',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> ConfirmScreen(),
          title: 'Confirm',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> CreateAddressScreen(),
          title: 'Address',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=>  ProductListScreens(),
          title: 'Home Details',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> HomeScreen(),
          title: 'Home ',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> ItemDetailsScreen(),
          title: 'Item Deatils',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> LoginScreen(),
          title: 'Login',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> MyOrdersScreen(),
          title: 'Order Scr',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=>  PaymentScreen(),
          title: 'Payment',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> ProfileScreen(),
          title: 'Profile',
          icon: Icons.shopping_bag,
        ),
        itemList(
          context,
          ()=> SignUpScreen(),
          title: 'Signup',
          icon: Icons.auto_fix_high_sharp,
        ),
        itemList(
          context,
          ()=> SplashScreen(),
          title: 'Spalash',
          icon: Icons.shopping_bag,
        ),
       
 
      ])),
             
           )
  ;
  }

  Widget itemList(
    BuildContext context,
    Widget Function() createPage, {
    required String title,
    required IconData icon,
  }) {
    return 
    InkWell(
        onTap: () {

    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) {
          return createPage();
        }));
  },
        child: 
        ListTile(
          title: Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          leading: Icon(icon),
        )
        );
  }


  
Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'images/app_logo.png',
              width: 130,
              height: 130,
            ),
          ),
        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Rahul",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}
}
