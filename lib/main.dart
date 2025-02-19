import 'package:flutter/material.dart';
import 'package:my_first_app/modules/product/controller/cart_controller.dart';
import 'package:my_first_app/routes/app_pages.dart'; // Import route file
import 'package:get/get.dart';

void main() {
  Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Routes Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.home,
      getPages: AppPages.routes,
    );
  }
}
