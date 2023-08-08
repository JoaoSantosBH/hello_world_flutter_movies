import '../data/failure.dart';

class GenericFailure extends Failure {}

class TimeoutFailure extends Failure {
  const TimeoutFailure({
    String? message,
    // coverage:ignore-start
  }) : super(
          message: message ?? 'Você está sem internet, tente novamente.',
        );
  // coverage:ignore-end
}

class MessageFailure extends Failure {
  final String msg;

  const MessageFailure(this.msg);
}
