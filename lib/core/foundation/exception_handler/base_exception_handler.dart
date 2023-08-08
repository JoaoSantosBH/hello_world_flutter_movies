import '../data/failure.dart';

abstract class BaseExceptionHandler {
  Failure handle(Object e);
}
