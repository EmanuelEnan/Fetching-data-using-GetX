import 'dart:convert';

import 'package:getx_fetch_data/product.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<Product>> fetchProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> alt = jsonDecode(response.body);
      return alt.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('got error');
    }
  }
}
