// Service to make REST API calls using the [http](https://pub.dev/packages/http) and dio packages

import 'package:dio/dio.dart';
import '../../constants/api_path.dart';

var options = BaseOptions(
    baseUrl: AppUrl.baseURL,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {'Accept': "application/json"},
    followRedirects: false,
    validateStatus: (status) {
      return status! < 500;
    });

Dio dio = Dio(options);
