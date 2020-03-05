import 'package:tictactoe/core/data/network/exception/api_exception.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/call_state/call_state.dart';
import 'package:tictactoe/core/presentation/error/error_translator.dart';
import 'package:tictactoe/core/util/logger/logger.dart';

Stream<CallState<T>> fetch<T>(
  Future<T> call,
) async* {
  try {
    yield CallState.progress();
    final result = await call;
    yield CallState.success(result);
  } on ApiException catch (e) {
    logger.e(e);
    final errorMessage = getIt.get<ErrorTranslator>().translate(e);
    yield CallState.error(errorMessage);
  } catch (e) {
    logger.e(e);
  }
}

Stream<T> dispatchState<T>(Object mappedState) async* {
  if (mappedState is Iterable) {
    yield* Stream.fromIterable(mappedState.where((e) => e is T));
  }
  if (mappedState is Stream<T>) {
    yield* mappedState;
  } else if (mappedState is Future<T>) {
    yield* Stream.fromFuture(mappedState);
  } else if (mappedState is T) {
    yield* Stream.value(mappedState);
  }
}
