import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

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

    Map<String,dynamic> dd = loginRequest.toJson();
    debugPrint('###### payload: $dd');

    final response = await dio.post(
      'http://192.168.0.181:3000/login',
      data: loginRequest.toJson(),
    );
    debugPrint('###### payloadRecebido: ${response.data}');
    return UserInfoModel.fromJson(response.data);
  }
}