import 'package:flutter/material.dart';
import 'package:my_first_app/controllers/user_controller.dart';
import 'package:my_first_app/models/user_model.dart';

class UserFormPage extends StatefulWidget {
  final UserController userController;
  final UserModel? user;

  const UserFormPage({super.key});

  @override
  _UserFormPageState createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      _nameController.text = widget.user!.name;
      _ageController.text = widget.user!.age.toString();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _saveUser() {
    String name = _nameController.text;
    int age = int.tryParse(_ageController.text) ?? 0;

    if (name.isEmpty || age <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid name or age")),
      );
      return;
    }

    if (widget.user == null) {
      widget.userController.addUser(name, age);
    } else {
      widget.userController.updateUser(widget.user!.id, name, age);
    }

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(widget.user == null ? "Add User" : "Edit User")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: "Age"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveUser,
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
