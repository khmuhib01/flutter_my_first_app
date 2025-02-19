import 'package:get/get.dart';
import 'package:my_first_app/modules/product/view/cart_view.dart';
import 'package:my_first_app/modules/product/view/product_details_view.dart';
import 'package:my_first_app/modules/product/view/product_view.dart';
import 'package:my_first_app/view/home_page.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => ProductView(),
    ),
    GetPage(
      name: Routes.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartView(),
    ),

  ];
}
