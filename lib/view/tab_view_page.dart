import 'package:flutter/material.dart';

class TabViewPage extends StatefulWidget {
  const TabViewPage({super.key});

  @override
  State<TabViewPage> createState() => _TabViewPageState();
}

class _TabViewPageState extends State<TabViewPage> {
  int _currentIndex = 0; // To track the selected tab

  // List of pages for different tabs
  final List<Widget> _pages = [
    Center(child: Text("Content of Tab 1", style: TextStyle(fontSize: 20))),
    Center(child: Text("Content of Tab 2", style: TextStyle(fontSize: 20))),
    Center(child: Text("Content of Tab 3", style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Tabs Example"),
        backgroundColor: Colors.amber,
      ),
      body: _pages[_currentIndex], // Display the selected tab content

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Active tab
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Tab 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Tab 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Tab 3",
          ),
        ],
        selectedItemColor: Colors.amber, // Highlight color for active tab
        unselectedItemColor: Colors.grey, // Color for inactive tabs
      ),
    );
  }
}
