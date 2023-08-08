import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
  final int id;
  final String name;
  final String photoUrl;
  final String email;

  const UserInfo({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.email,
  });

  @override
  List<Object?> get props => [id, name, photoUrl, email];
}
