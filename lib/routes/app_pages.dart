import 'package:get/get.dart';
import 'package:my_first_app/modules/product/view/cart_view.dart';
import 'package:my_first_app/modules/product/view/checkout_view.dart';
import 'package:my_first_app/modules/product/view/product_details_view.dart';
import 'package:my_first_app/modules/product/view/product_view.dart';
import 'package:my_first_app/view/home_page.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.product,
      page: () => ProductView(),
    ),
    GetPage(
      name: Routes.productDetails,
      page: () => ProductDetailsView(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => CartView(),
    ),
    GetPage(
      name: Routes.checkout,
      page: () => CheckoutView(),
    ),

  ];
}
