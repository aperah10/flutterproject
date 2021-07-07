import 'package:flutter/material.dart';
import 'product_list_page.dart';
import 'list_item_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override

  _HomeScreenState createState() => _HomeScreenState();
 
}

class _HomeScreenState extends State<HomeScreen> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          elevation: 5.0,
          
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.favorite),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),

        // DRAWER FOR
      //  drawer: MyDrawerList(),
        
        // ---------------------

        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => ProductListScreens());
                          Navigator.of(context).push(route);
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: itemsList(),
                ), // Items List Container

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Text(
                          "Featured",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) =>  ProductListScreens());
                          Navigator.of(context).push(route);
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: itemsList(),
                ), // Items List Container

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Text(
                          "Best Sale",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) =>  ProductListScreens());
                          Navigator.of(context).push(route);
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: itemsList(),
                ) // Items List Container
              ],
            ) // Main/Parent List View
            ));
  }

  Container itemsList() {
    return new Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          items("images/mask_group_5.png", "Item Price", "Item Desc "),
          items("images/mask_group_6.png", "Item Price", "Item Desc "),
          items("images/mask_group_8.png", "Item Price", "Item Desc "),
          items("images/mask_group_10.png", "Item Price", "Item Desc "),
          items("images/mask_group_11.png", "Item Price", "Item Desc "),
          items("images/mask_group_12.png", "Item Price", "Item Desc "),
          items("images/mask_group_5.png", "Item Price", "Item Desc "),
          items("images/mask_group_6.png", "Item Price", "Item Desc "),
        ],
      ), // Child ListView
    );
  }

  Container items(String imgSrc, String title, String subTitle) {
    AssetImage image = new AssetImage(imgSrc);
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: <Widget>[
            Image(image: image),
            ListTile(
              onTap: () {
                Navigator.push(
                    this.context,
                    MaterialPageRoute(
                        builder: (context) => ItemDetailsScreen()));
              },
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(fontSize: 12.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container shoppingItems(String imgSrc, String title, String subTitle) {
    return new Container(
        width: 150.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(imgSrc),
            subtitle: Text(title),
          ),
        ));
  }
}
