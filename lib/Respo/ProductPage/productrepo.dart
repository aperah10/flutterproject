import 'package:http/http.dart ' as http;
import 'dart:convert' as json;
import 'package:uis/models/Product/productm.dart';

class ProdRespo {
  // List<String> mat = ['manogog','heoeoe'];
  // Future<ProductP> getProduct() async {
  //   String url = 'https://aperahwork.herokuapp.com/p/';

  //   var res = await http.get(
  //     Uri.parse(url),
  //   );

  //   print(res);
  //   if (res.statusCode == 200) {
  //     var body = json.jsonDecode(res.body) as List<dynamic>;
  //     print(body);
  //     // var gotUser = body[0];
  //     // print(gotUser);
  //     // ProductP product = ProductP.fromJson(gotUser);
  //     // return product;
  //     return mat;
  //   } else {
  //     throw Exception('Failed to load Data Loaded ');
  //   }

  // }

  getProduct() async {
    String url = 'https://aperahwork.herokuapp.com/p/';

    var res = await http.get(
      Uri.parse(url),
  //      headers: {
  //   "Accept": "application/json",
  //   "Access-Control-Allow-Origin": "*"
  // }
    );

    print(res.statusCode);
    if (res.statusCode == 200) {
      var body = json.jsonDecode(res.body) as List<dynamic>;
      print(body);
      // var gotUser = body[0];
      // print(gotUser);
      // ProductP product = ProductP.fromJson(gotUser);
      // return product;
      // return mat;
    } else {
      throw Exception('Failed to load Data Loaded ');
    }
  }
}
