abstract class UseCase<T, I> {
  Future<T> call(I params);
}
