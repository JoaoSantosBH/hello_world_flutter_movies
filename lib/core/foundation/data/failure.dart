import 'package:equatable/equatable.dart';

class Failure extends Equatable implements Exception {
  final bool isWarning;
  final String title;
  final String message;
  final String primaryAction;
  final String? secondaryAction;

  const Failure({
    this.isWarning = true,
    this.title = 'Erro',
    this.message = 'Tente novamente mais tarde',
    this.primaryAction = 'OK',
    this.secondaryAction,
  });

  @override
  List<Object?> get props => [
        isWarning,
        title,
        message,
        primaryAction,
        secondaryAction,
      ];
}
