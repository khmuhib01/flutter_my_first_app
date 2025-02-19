import 'package:flutter/material.dart';
import 'package:my_first_app/modules/product/view/product_view.dart';
import 'package:my_first_app/view/about_me_page.dart';
import 'package:my_first_app/view/profile_page.dart';
import 'package:my_first_app/view/settings_page.dart';
import 'package:my_first_app/view/tab_view_page.dart';
import 'package:my_first_app/view/tabs/home_tab.dart';
import 'package:my_first_app/view/tabs/profile_tab.dart';
import 'package:my_first_app/view/tabs/search_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // List of pages for different tabs
  final List<Widget> _pages = [
    const HomeTab(),
    const SearchTab(),
    const ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.amber,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/profile.jpg"), // Replace with an actual image
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.amber),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.amber),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProfilePage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.amber),
              title: Text('Product'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductView();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SettingsPage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey),
              title: Text('About me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const AboutMePage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout'),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TabViewPage(),
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
