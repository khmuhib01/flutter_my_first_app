import 'package:flutter/material.dart';
import 'package:my_first_app/controllers/user_controller.dart';
import 'package:my_first_app/models/user_model.dart';

class UserListPage extends StatefulWidget {
  final UserController userController;

  const UserListPage({Key? key, required this.userController})
      : super(key: key);

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();

    // Adding some demo users when the page loads
    widget.userController.addUser("Alice Johnson", 25);
    widget.userController.addUser("Bob Smith", 30);
    widget.userController.addUser("Charlie Brown", 28);
  }

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = widget.userController.getUsers(); // Fetch user list

    return Scaffold(
      appBar: AppBar(title: Text("User List")),
      body: users.isEmpty
          ? Center(child: Text("No users available"))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(user.name[0]), // First letter as avatar
                    ),
                    title: Text(user.name),
                    subtitle: Text("Age: ${user.age}"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          widget.userController.deleteUser(user.id);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
              context, '/userForm'); // Navigate to add user form
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
