import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/controllers/home_controller.dart';
import 'package:my_first_app/controllers/user_controller.dart';
import 'package:my_first_app/widgets/custom_button.dart';

class MyHomePage extends StatelessWidget {
  final HomeController _homeController = HomeController();
  final UserController _userController = UserController();

  MyHomePage({super.key}) {
    if (kDebugMode) {
      print("Sum of Numbers: ${_homeController.sum}");
    }
  }

  // Helper function to create buttons
  Widget _buildButton({
    required String text,
    required String route,
    required dynamic controller,
    Color? color,
    IconData? icon,
  }) {
    return CustomButton(
      text: text,
      routeName: route,
      controller: controller,
      color: color,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the sum value
            Text(
              "Sum of Numbers: ${_homeController.sum}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Buttons for navigation
            _buildButton(
                text: "Container Learn",
                route: '/container',
                controller: _homeController),
            _buildButton(
                text: "Row Column Learn",
                route: '/rowcolumn',
                controller: _homeController),
            _buildButton(
                text: "List View Learn",
                route: '/listview',
                controller: _homeController),
            _buildButton(
              text: "Container Learn",
              route: '/container',
              controller: _homeController,
              color: Colors.red,
              icon: Icons.check_circle,
            ),
            _buildButton(
              text: "User Screen",
              route: '/user',
              controller: _userController,
              color: Colors.green,
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
