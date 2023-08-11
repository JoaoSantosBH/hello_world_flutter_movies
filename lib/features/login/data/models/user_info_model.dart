import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel extends Equatable {
  final int id;
  @JsonKey(name: 'nome')
  final String name;
  @JsonKey(name: 'urlFoto')
  final String photoUrl;
  final String email;

  const UserInfoModel({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.email,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  @override
  List<Object?> get props => [id, name, photoUrl, email];
}
