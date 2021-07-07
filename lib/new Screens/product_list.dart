import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uis/Logic/product/bloc/productpage_bloc.dart';
import 'package:uis/Respo/ProductPage/productrepo.dart';
import 'package:uis/Widget/AppBarWid.dart';
import 'package:uis/models/itemmodel.dart';
import 'package:uis/screens/home_screen.dart';
import 'package:uis/screens/list_item_detail_screen.dart';

// class ProductListScr extends StatelessWidget {
//   @override
//   // final dl = List.generate(15, (index) => CatModel.items);

//   Widget build(BuildContext context) {
//     final ProductpageBloc productpageBloc =
//         BlocProvider.of<ProductpageBloc>(context);

//     return Scaffold(
//         appBar: CustomAppBar(
//             titlename: 'Featured', createPage: () => HomeScreen(), act: true),
//         body: BlocConsumer<ProductpageBloc, ProductpageState>(
//             listener: (context, state) {},
//             builder: (context, state) {
//               print('state -----------------------------------------');
//               print(state.stringify);
//               if (state is UnLoadedProductPage) {
//                 return CircularProgressIndicator();
//               }
//               if (state is LoadedProductState) {
//                 return Container(child: Text('${productpageBloc.state}'));
//               }
//               return Container(child: Text('${state}'));
//             }

//             // child: GridView.builder(
//             //     itemCount: dl.length,
//             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             //       crossAxisCount: 2,
//             //       childAspectRatio: 0.60,
//             //       // crossAxisSpacing: 20,
//             //       //   mainAxisSpacing: 20
//             //     ),
//             //     padding: EdgeInsets.symmetric(horizontal: 20.0),
//             //     itemBuilder: (context, index) {
//             //       // print(index);
//             //       return dataOfListView(context,
//             //           product: );
//             //     }),
//             // );
//             // },
//             ));
//   }

//   // Widget dataOfListView(String imgSrc, String title, String subTitle) {
//   //   AssetImage image = new AssetImage(imgSrc);
//   dataOfListView(context, {required dynamic product}) {
//     return new Container(
//       padding: EdgeInsets.all(10.0),
//       child: SizedBox(
//         width: 160.0,
//         child: Wrap(
//           children: <Widget>[
//             Image.asset(product.picurl),
//             ListTile(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => ItemDetailsScreen()));
//               },
//               title: Text(
//                 product.name,
//                 // title,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text(
//                 product.desc,
//                 // subTitle,
//                 style: TextStyle(fontSize: 12.0),
//               ),
//             ),
//             Row(
//               children: [
//                 btnC(btnname: 'buynow'),
//                 btnC(btnname: 'addtocart'),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   // buttons for product
//   Expanded btnC({required String btnname}) {
//     return Expanded(
//         child: InkWell(
//             onTap: () {},
//             child: Container(
//                 // height: 40, width: 50,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.redAccent, Colors.red],
//                       begin: Alignment.topLeft,
//                       end: Alignment.topRight,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0)),
//                 child: Center(
//                     child: Text(btnname,
//                         style: TextStyle(color: Colors.white))))));
//   }

class ProductListScr extends StatefulWidget {
  ProductListScr({Key? key}) : super(key: key);

  @override
  _ProductListScrState createState() => _ProductListScrState();
}

class _ProductListScrState extends State<ProductListScr> {
  ProdRespo prodRespo = ProdRespo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data '),
            SizedBox(
              height: 50,
              child: InkWell(
                child: Text('send data'),
                onTap: () {
                 prodRespo.getProduct();
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
