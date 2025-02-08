import 'package:flutter/material.dart';
import 'package:my_first_app/view/home_page.dart';

class AppRoutes {
  // Route names
  static const String home = '/';

  // Centralized route definitions
  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
  };
}
