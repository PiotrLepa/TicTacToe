import 'package:tictactoe/core/call_state.dart';
import 'package:tictactoe/core/error/error_translator.dart';
import 'package:tictactoe/core/logger/logger.dart';
import 'package:tictactoe/core/network/exception/api_exception.dart';

Stream<CallState<T>> dispatch<T>(
  Future<T> call,
) async* {
  try {
    yield CallState.progress();
    final result = await call;
    yield CallState.success(result);
  } on ApiException catch (e) {
    logger.e(e);
    final errorMessage = ErrorTranslator().translate(e);
    yield CallState.error(errorMessage);
  } catch (e) {
    logger.e(e);
  }
}
