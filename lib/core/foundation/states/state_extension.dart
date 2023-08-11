import '../base_repository/base_repository.dart';
import '../data/result.dart';
import 'state.dart';

extension ViewStateExtension on ViewState {
  /// Useful method to call some task and set the result in the ViewState automatically.
  Future<void> update<T>(
    Task<Result<T>> task, {
    bool offline = false,
  }) async {
    loading = true;

    Result<T> result = await task();

    if (result.isSuccess) {
      value = result.data;
    } else {
      error = result.error;
    }
  }
}
