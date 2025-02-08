import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart'; // Import fluttertoast

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<dynamic> _posts = [];

  // Set loading state
  bool isLoading = false; // Initially true to show loader

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  // Function to fetch API data
  Future<void> fetchPosts() async {
    try {
      isLoading = true; // Start loading
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

      print(response.body);

      if (response.statusCode == 200) {
        setState(() {
          _posts = jsonDecode(response.body); // Decode JSON and update list
          isLoading = false; // Stop loading
        });
      } else {
        throw Exception("Failed to load posts");
      }
    } catch (e) {
      setState(() {
        isLoading = false; // Stop loading even if there's an error
      });
      print("Error fetching posts: $e");
    }
  }

  // Function to show toast with post ID
  void showToast(int id) {
    Fluttertoast.showToast(
      msg: "Post ID: $id",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Tab"),
        backgroundColor: Colors.amber,
      ),
      body: isLoading
          ? const Center(
              child:
                  CircularProgressIndicator(), // Show loader when fetching data
            )
          : ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                final post = _posts[index];
                return ListTile(
                  title: Text(post["title"]),
                  subtitle: Text(post["body"]),
                  onTap: () {
                    // Show toast with ID when tapped
                    showToast(post["id"]);
                  },
                );
              },
            ),
    );
  }
}
