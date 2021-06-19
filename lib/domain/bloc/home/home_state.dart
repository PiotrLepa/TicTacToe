part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.updatePage({
    required RawKeyString pageTitle,
    required int index,
  }) = UpdatePage;
}
