import '../../../../core/foundation/base_repository/base_repository.dart';
import '../../../../core/foundation/data/result.dart';
import '../../domain/entities/login_request.dart';
import '../../domain/entities/user_info.dart';
import '../../domain/repositories/login_repository_interface.dart';
import '../datasources/login_datasource_interface.dart';
import '../handlers/login_exception_handler.dart';
import '../mappers/login_request_mapper.dart';
import '../mappers/user_info_mapper.dart';

class LoginRepositoryImpl extends BaseRepository<LoginExceptionHandler>
    implements LoginRepositoryInterface {
  final LoginDatasourceInterface loginDatasource;

  LoginRepositoryImpl({
    required this.loginDatasource,
    required LoginExceptionHandler? exceptionHandler,
  }) : super(exceptionHandler: exceptionHandler);

  @override
  Future<Result<UserInfo>> doLogin({required LoginRequest loginRequest}) async {
    return await exec(() async {
      final loginRequestModel = LoginRequestMapper.toModel(loginRequest);
      final userInfoModel = await loginDatasource.doLogin(
        loginRequest: loginRequestModel,
      );
      return UserInfoMapper.toEntity(userInfoModel);
    });
  }
}
