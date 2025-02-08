import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light grey background
      appBar: AppBar(
        title: const Text("Account"),
        backgroundColor: Colors.blue, // Blue header
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Open drawer or menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Header Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      "assets/profile.jpg"), // Replace with actual image
                ),
                const SizedBox(height: 10),
                const Text(
                  "Hess Barker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "andersonmoses@portalino.com",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Profile Menu Section
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(Icons.person, "Profile"),
                buildMenuItem(Icons.book, "My Bookings"),
                buildMenuItem(Icons.notifications, "Notifications"),
                buildMenuItem(Icons.message, "Messages"),
                const Divider(),
                buildMenuItem(Icons.settings, "Settings"),
                buildMenuItem(Icons.language, "Languages"),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 4, // Set "Account" as selected tab
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarms"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }

  // Function to create a menu item
  Widget buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Handle menu tap
      },
    );
  }
}
