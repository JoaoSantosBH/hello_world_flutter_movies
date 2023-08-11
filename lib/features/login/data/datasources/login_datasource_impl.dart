import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello_world_flutter_movies/core/constants/base_url.dart';

import '../models/login_request_model.dart';
import '../models/user_info_model.dart';
import 'login_datasource_interface.dart';

class LoginDatasourceImpl implements LoginDatasourceInterface {
  final Dio dio;

  LoginDatasourceImpl({required this.dio});

  @override
  Future<UserInfoModel> doLogin({
    required LoginRequestModel loginRequest,
  }) async {

    Map<String,dynamic> payloadSent = loginRequest.toJson();
    debugPrint('###### payload: $payloadSent');

    dio.interceptors.add(LogInterceptor(responseBody: true));
    final response = await dio.post(
      '$baseUrl/login',
      data: loginRequest.toJson(),
    );
    debugPrint('###### payloadReceived: ${response.data}');
    return UserInfoModel.fromJson(response.data);
  }
}
