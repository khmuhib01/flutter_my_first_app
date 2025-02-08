import 'package:flutter/material.dart';
import 'package:my_first_app/view/tab_view_page.dart';

class TabViewController {
  void navigateToPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TabViewPage()));
  }
}
