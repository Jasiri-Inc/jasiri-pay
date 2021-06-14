import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../../../utils/services/rest_api_service.dart';
import '../models/user.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(
      String email, String password, String deviceName) async {
    var result;

    final Map<String, String> loginData = {
      'email': email,
      'password': password,
      'device_name': deviceName
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    var formData = FormData.fromMap(loginData);

    var response = await dio.post('/auth/login', data: formData);

    if (response.statusCode == 201) {
      final Map<String, dynamic> responseData = response.data;

      var userData = responseData['data'];

      User authUser = User.fromJson(userData);

      // UserPreferences().saveUser(authUser);

      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {'status': false, 'message': response.data['message']};
    }
    return result;
  }

  Future<Map<String, dynamic>> register(String name, String email,
      String password, String passwordConfirmation, String deviceName) async {
var result;

    final Map<String, dynamic> registrationData = {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'device_name': deviceName,
    };

    _registeredInStatus = Status.Registering;
    notifyListeners();

    var formData = FormData.fromMap(registrationData);

    var response = await dio.post('/auth/register', data: formData);
    print(response.data);

    
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = response.data;
      var userData = responseData['data'];

      User authUser = User.fromJson(userData);

      // UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {
      result = {
        'status': false,
        'message': 'Registration failed',
        'data': response.data,
      };
    }
    return result;
  }

  static Future<FutureOr> onValue(Response response) async {
    var result;
    final Map<String, dynamic> responseData = response.data;

    if (response.statusCode == 200) {
      var userData = responseData['data'];

      User authUser = User.fromJson(userData);

      // UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {
      result = {
        'status': false,
        'message': 'Registration failed',
        'data': responseData
      };
    }

    return result;
  }

  static onError(error) {
    print("the error is $error.detail");
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}

class UserProvider with ChangeNotifier {
  User _user = new User();

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
