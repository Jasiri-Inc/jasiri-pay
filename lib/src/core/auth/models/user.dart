// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.user,
  });

  UserClass user;

  factory User.fromJson(Map<String, dynamic> responseData) => User(
        user: UserClass.fromJson(responseData["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class UserClass {
  UserClass({
    this.id,
    this.name,
    this.email,
    this.token,
    this.deviceId,
  });

  int id;
  String name;
  String email;
  String token;
  String deviceId;

  factory UserClass.fromJson(Map<String, dynamic> responseData) => UserClass(
        id: responseData["id"],
        name: responseData["name"],
        email: responseData["email"],
        token: responseData["token"],
        deviceId: responseData["device_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "token": token,
        "device_id": deviceId,
      };
}
