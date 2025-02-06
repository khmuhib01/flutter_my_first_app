class UserModel {
  final String name;
  final int age;

  UserModel({required this.name, required this.age});

  // Factory method for creating an object from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(name: json['name'], age: json['age']);
  }

  // Convert object to JSON
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age};
  }
}
