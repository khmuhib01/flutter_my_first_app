import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/modules/product/controller/cart_controller.dart';
import 'package:my_first_app/modules/product/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product detail view"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () => Get.toNamed('/cart'),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(product);

                Get.snackbar(
                    'Added to Cart', '${product.name} added to your cart');
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
