import 'package:flutter/material.dart';
import 'package:my_first_app/view/user/user_form_page.dart';
import 'package:my_first_app/view/container_learn.dart';
import 'package:my_first_app/view/home_page.dart';
import 'package:my_first_app/view/listview_learn.dart';
import 'package:my_first_app/view/row_colum.dart';
import 'package:my_first_app/controllers/user_controller.dart';

class AppRoutes {
  // Route names
  static const String home = '/';
  static const String container = '/container';
  static const String rowColumn = '/rowcolumn';
  static const String listView = '/listview';
  static const String user = '/user';
  static const String userList = '/userList';
  static const String userForm = '/userForm';

  // Singleton instance for UserController
  static final UserController userController = UserController();

  // Centralized route definitions
  static Map<String, WidgetBuilder> routes = {
    home: (context) => MyHomePage(),
    container: (context) => ContainerPage(),
    rowColumn: (context) => RowColumPage(),
    listView: (context) => ListViewPage(),
    // user: (context) => UserPage(),
    // userList: (context) => UserListPage(),
    userForm: (context) => UserFormPage(),
  };
}
