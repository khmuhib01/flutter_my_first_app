import 'package:get/get.dart';
import 'package:my_first_app/modules/product/models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    products.addAll([
      ProductModel(name: 'Product 01', price: 10.20),
      ProductModel(name: 'Product 02', price: 15.20),
      ProductModel(name: 'Product 03', price: 25.20),
    ]);
  }
}
