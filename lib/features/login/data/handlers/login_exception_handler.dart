import 'package:dio/dio.dart';

import '../../../../core/foundation/data/failure.dart';
import '../../../../core/foundation/exception_handler/base_exception_handler.dart';
import '../../../../core/i18n/i18n.dart';

class LoginExceptionHandler implements BaseExceptionHandler {
  @override
  Failure handle(Object e) {
    if (e is DioError) {
      if (e.response?.statusCode == 401) {
        return Failure(
          message: e.response?.data['error'],
        );
      }
      throw e;
    }
    return Failure(
      message: I18n.strings.textGenericFailureMessage,
    );
  }
}
