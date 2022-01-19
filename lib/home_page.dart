import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_fetch_data/product_controller.dart';

class HomePage extends StatelessWidget {
  final _productController = Get.put<ProductController>(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products List',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              const Expanded(
                child: Text(
                  'ShopX',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.view_list_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grid_view_rounded),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Obx(
                  () => _productController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : Card(
                          child: Column(
                            children: [
                              Image.network(
                                  _productController.productList[index].image),
                                  Text(_productController.productList[index].title),
                            ],
                          ),
                        ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
