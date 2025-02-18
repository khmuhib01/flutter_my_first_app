import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/modules/product/controller/product_controller.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            final product = productController.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price.toString()}'),
              onTap: () {
                Get.toNamed('/product-detail', arguments: product);
              },
            );
          },
        );
      }),
    );
  }
}
