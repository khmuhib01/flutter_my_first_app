import 'package:flutter/material.dart';
import 'package:my_first_app/models/user_model.dart';

class UserController {
  List<UserModel> users = []; // User list (acting as local database)
  int _nextId = 1; // ID auto-increment

  // CREATE: Add a new user
  void addUser(String name, int age) {
    users.add(UserModel(id: _nextId++, name: name, age: age));
  }

  // READ: Get all users
  List<UserModel> getUsers() {
    return users;
  }

  // UPDATE: Edit user details
  void updateUser(int id, String newName, int newAge) {
    int index = users.indexWhere((user) => user.id == id);
    if (index != -1) {
      users[index] = UserModel(id: id, name: newName, age: newAge);
    }
  }

  // DELETE: Remove a user
  void deleteUser(int id) {
    users.removeWhere((user) => user.id == id);
  }

  // Navigate to a page with optional arguments
  void navigateToPage(BuildContext context, String routeName) {
    Navigator.pushNamed(
      context,
      routeName // Pass sum as an argument
    );
  }
}



