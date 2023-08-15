import 'package:dio/dio.dart';
import 'package:hello_world_flutter_movies/core/foundation/data/failure.dart';
import 'package:hello_world_flutter_movies/core/foundation/exception_handler/base_exception_handler.dart';
import 'package:hello_world_flutter_movies/core/i18n/i18n.dart';

class MoviesExceptionHandler implements BaseExceptionHandler {
  @override
  Failure handle(Object e) {
    if(e is DioError) {
      if(e.response?.statusCode == 401){
        return Failure(
            message: e.response?.data['status_message'],
        );
      }
      throw e;
    }

    return Failure(
      message: I18n.strings.textUsernameFormFieldHint
    );
  }

}