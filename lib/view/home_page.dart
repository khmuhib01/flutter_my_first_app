import 'package:flutter/material.dart';
import 'package:my_first_app/controllers/home_controller.dart';
import 'package:my_first_app/controllers/user_controller.dart';
import 'package:my_first_app/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeController _homeController = HomeController();
  final UserController _userController = UserController();

  bool isChecked = false; // ✅ Define state variable for checkbox

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

            // ✅ Checkbox with working state
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue ?? false; // ✅ Update the state
                });
                print("Checkbox value changed: $isChecked");
              },
            ),

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
            _buildButton(
              text: "User List",
              route: '/user-list',
              controller: _userController,
              color: Colors.green,
              icon: Icons.person,
            ),
            _buildButton(
              text: "User Form",
              route: '/user-list',
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
