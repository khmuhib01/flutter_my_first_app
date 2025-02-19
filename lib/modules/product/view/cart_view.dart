import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/modules/product/controller/cart_controller.dart';
import 'package:my_first_app/routes/app_pages.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ), // AppBar
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text('\$${item.price.toString()}'),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () => cartController.removeFromCart(item),
                    ), // IconButton
                  ); // ListTile
                },
              );
            }),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total: \$${cartController.totalAmount.value.toStringAsFixed(2)}', // Ensures formatting
                style: TextStyle(fontSize: 24),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.checkout);
            },
            child: Text('Proceed to Checkout'),
          ),
        ],
      ),
    );
  }
}
