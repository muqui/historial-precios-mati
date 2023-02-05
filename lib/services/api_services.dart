import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/products.dart';


class FetchUserList {
  var data = [];
  List<Product> results = [];
  String urlList = 'https://matipapeleria.com/api-precios/post.php';

  Future<List<Product>> getuserList({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
           data = json.decode(response.body);
        results = data.map((e) => Product.fromJson(e)).toList();
         if (query!= null){
          //results = results.where((element) => element.column3!.toLowerCase().contains(query.toLowerCase())).toList();
          results = results.where((element) => element.column3!.toLowerCase().contains((query.toLowerCase()))).toList();

        }
     print("200");
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}