import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_fetch_data/product.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  // var productList = [Product].obs;

  // @override
  // void onInit() {
  //   allProducts();
  //   super.onInit();
  // }

  // ProductService productService = ProductService();

  // void allProducts() async {
  //   var products = productService.fetchProducts();
  //   productList.value = products as List<Type>;
  // }

  var productList = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      Product _product = Product.fromJson(jsonDecode(response.body));

      productList.add(
        Product(
          image: _product.image,
          title: _product.title,
          price: _product.price,
        ),
      );
      isLoading.value = true;
    } else {
      throw Exception('got error');
    }
  }
}
