class UserModel {
  final int id;
  final String name;
  final int age;

  UserModel({required this.id, required this.name, required this.age});

  // Convert JSON to UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], name: json['name'], age: json['age']);
  }

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age};
  }
}
