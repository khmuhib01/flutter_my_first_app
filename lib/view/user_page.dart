import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/custom_button.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // Helper function to create buttons
  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    Color? color,
    IconData? icon,
  }) {
    return CustomButton(
      text: text,
      routeName: '', // Not used in this case
      controller: null, // Controller is not needed here
      color: color,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "User Page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Buttons for navigation
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context, true),
              icon: const Icon(Icons.home),
              label: const Text("Go to Home Page"),
            ),
            const SizedBox(height: 10),
            _buildButton(
              text: "Container Learn",
              onPressed: () => Navigator.pushNamed(context, '/container'),
              color: Colors.blue,
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
