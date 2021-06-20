part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.updatePage({
    required PlainLocalizedString pageTitle,
    required int index,
  }) = UpdatePage;
}
