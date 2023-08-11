// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      id: json['user']['id'] as int,
      name: json['user']['nome'] as String,
      photoUrl: json['user']['urlFoto'] as String,
      email: json['user']['email'] as String,
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.name,
      'urlFoto': instance.photoUrl,
      'email': instance.email,
    };
