import 'package:flutter/material.dart';
import 'package:my_first_app/routes/app_pages.dart'; // Import route file
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.PRODUCT,
      getPages: AppPages.routes, // Use AppRoutes instead of hardcoded routes
      // routes: AppRoutes.routes, // Use the centralized routes
    );
  }
}
