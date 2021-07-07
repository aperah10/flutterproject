import 'package:flutter/material.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/models/itemmodel.dart';
import 'home_screen.dart';
import 'list_item_detail_screen.dart';

class ProductListScreens extends StatefulWidget {
  @override
 _ProductListScreensState createState() => _ProductListScreensState ();
}

class _ProductListScreensState  extends State<ProductListScreens> {
  @override
   final dl = List.generate(15, (index) => CatModel.items);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(titlename: 'Featured', createPage: ()=>HomeScreen(), act:true),
       
        body: Container(
          child: GridView.builder(itemCount: dl.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            childAspectRatio: 0.60,
              // crossAxisSpacing: 20,
              //   mainAxisSpacing: 20
                ),

            
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            itemBuilder: (context, index) {
              // print(index);
              return dataOfListView(product: CatModel.items[index]);
            }
        
          ),
        ));
  }

  // Widget dataOfListView(String imgSrc, String title, String subTitle) {
  //   AssetImage image = new AssetImage(imgSrc);
  dataOfListView({required Item product}) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 160.0,
        child: Wrap(
          children: <Widget>[
            Image.asset( product.picurl),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => 
                ItemDetailsScreen()));
              },
              title: Text(product.name,
                // title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(product.desc,
                // subTitle,
                style: TextStyle(fontSize: 12.0),
              ),
            ) ,
            Row(
                   children: [
                   btnC(btnname: 'buynow'), 
                   btnC(btnname:'addtocart'),
               
                 ],
                )
          ],
        ),
      ),
    );
  } 

    // buttons for product
  Expanded btnC( {required String btnname}) {
    return Expanded(
                child:
                 InkWell(onTap: (){}, 
                 child: Container(
                    // height: 40, width: 50,
                   decoration: BoxDecoration(
                      gradient: LinearGradient(colors: 
                      [Colors.redAccent,Colors.red],
                         begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        ),
                   borderRadius: BorderRadius.circular(10.0)),

                   child: Center(child:
                    Text(btnname,style: TextStyle(color: Colors.white)))))
  );
  } 
  
}
