import 'package:get/get.dart';
import 'package:my_first_app/modules/product/models/product_model.dart';

class CartController extends GetxController {
  var cartItems = <ProductModel>[].obs;
  var totalAmount = 0.0.obs;

  void addToCart(ProductModel product) {
    cartItems.add(product);
    totalAmount.value += product.price;
    calculateTotalAmount();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    totalAmount.value -= product.price;
    calculateTotalAmount();
  }

  void calculateTotalAmount() {
    totalAmount.value = 0.0;
    for (var item in cartItems) {
      totalAmount.value += item.price;
    }
  }
}
