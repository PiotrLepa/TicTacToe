import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/data/network/exception/api_exception.dart';
import 'package:tictactoe/core/domain/error/error_translator.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/call_state/call_state.dart';

Stream<CallState<T>> fetch<T>(Future<T> call,
) async* {
  try {
    yield CallState.progress();
    final result = await call;
    yield CallState.success(result);
  } on ApiException catch (e) {
    logger.e(e);
    final errorMessage = getIt.get<ErrorTranslator>().translate(e);
    yield CallState.error(errorMessage);
  } catch (e, s) {
    logger.e("bloc helper fetch", e, s);
  }
}
