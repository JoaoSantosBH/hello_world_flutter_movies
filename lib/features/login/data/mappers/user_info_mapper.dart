import '../../domain/entities/user_info.dart';
import '../models/user_info_model.dart';

class UserInfoMapper {
  static UserInfo toEntity(UserInfoModel model) {
    return UserInfo(
      id: model.id,
      name: model.name,
      photoUrl: model.photoUrl,
      email: model.email,
    );
  }
}
