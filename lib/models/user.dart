import 'dart:convert';

class User {
  final String id;
  final String name;
  final String address;
  final String password;
  final String type;
  final String token;
  final String email;

  User({
    required this.id,
    required this.address,
    required this.email,
    required this.password,
    required this.name,
    required this.type,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'password': password,
      'address': address,
      'token': token,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["_id"] ?? '',
      address: map["address"] ?? '',
      name: map["name"] ?? '',
      password: map["password"] ?? '',
      type: map["type"] ?? "",
      email: map["email"] ?? "",
      token: map["token"] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
