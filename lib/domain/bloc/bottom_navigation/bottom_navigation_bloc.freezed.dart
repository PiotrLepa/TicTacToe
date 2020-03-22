// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BottomNavigationEventTearOff {
  const _$BottomNavigationEventTearOff();

  OnBottomNavigationTapped onBottomNavigationTapped(int index) {
    return OnBottomNavigationTapped(
      index,
    );
  }
}

// ignore: unused_element
const $BottomNavigationEvent = _$BottomNavigationEventTearOff();

mixin _$BottomNavigationEvent {
  int get index;

  $BottomNavigationEventCopyWith<BottomNavigationEvent> get copyWith;
}

abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$BottomNavigationEventCopyWithImpl<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  final BottomNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $OnBottomNavigationTappedCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory $OnBottomNavigationTappedCopyWith(OnBottomNavigationTapped value,
          $Res Function(OnBottomNavigationTapped) then) =
      _$OnBottomNavigationTappedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$OnBottomNavigationTappedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements $OnBottomNavigationTappedCopyWith<$Res> {
  _$OnBottomNavigationTappedCopyWithImpl(OnBottomNavigationTapped _value,
      $Res Function(OnBottomNavigationTapped) _then)
      : super(_value, (v) => _then(v as OnBottomNavigationTapped));

  @override
  OnBottomNavigationTapped get _value =>
      super._value as OnBottomNavigationTapped;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(OnBottomNavigationTapped(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$OnBottomNavigationTapped implements OnBottomNavigationTapped {
  const _$OnBottomNavigationTapped(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.onBottomNavigationTapped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBottomNavigationTapped &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $OnBottomNavigationTappedCopyWith<OnBottomNavigationTapped> get copyWith =>
      _$OnBottomNavigationTappedCopyWithImpl<OnBottomNavigationTapped>(
          this, _$identity);
}

abstract class OnBottomNavigationTapped implements BottomNavigationEvent {
  const factory OnBottomNavigationTapped(int index) =
      _$OnBottomNavigationTapped;

  @override
  int get index;
  @override
  $OnBottomNavigationTappedCopyWith<OnBottomNavigationTapped> get copyWith;
}

class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  UpdatePage updatePage(
      {@required RawKeyString pageTitle, @required int index}) {
    return UpdatePage(
      pageTitle: pageTitle,
      index: index,
    );
  }
}

// ignore: unused_element
const $BottomNavigationState = _$BottomNavigationStateTearOff();

mixin _$BottomNavigationState {
  RawKeyString get pageTitle;
  int get index;

  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith;
}

abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call({RawKeyString pageTitle, int index});
}

class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;

  @override
  $Res call({
    Object pageTitle = freezed,
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      pageTitle:
          pageTitle == freezed ? _value.pageTitle : pageTitle as RawKeyString,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $UpdatePageCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory $UpdatePageCopyWith(
          UpdatePage value, $Res Function(UpdatePage) then) =
      _$UpdatePageCopyWithImpl<$Res>;
  @override
  $Res call({RawKeyString pageTitle, int index});
}

class _$UpdatePageCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements $UpdatePageCopyWith<$Res> {
  _$UpdatePageCopyWithImpl(UpdatePage _value, $Res Function(UpdatePage) _then)
      : super(_value, (v) => _then(v as UpdatePage));

  @override
  UpdatePage get _value => super._value as UpdatePage;

  @override
  $Res call({
    Object pageTitle = freezed,
    Object index = freezed,
  }) {
    return _then(UpdatePage(
      pageTitle:
          pageTitle == freezed ? _value.pageTitle : pageTitle as RawKeyString,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$UpdatePage implements UpdatePage {
  const _$UpdatePage({@required this.pageTitle, @required this.index})
      : assert(pageTitle != null),
        assert(index != null);

  @override
  final RawKeyString pageTitle;
  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationState.updatePage(pageTitle: $pageTitle, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePage &&
            (identical(other.pageTitle, pageTitle) ||
                const DeepCollectionEquality()
                    .equals(other.pageTitle, pageTitle)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageTitle) ^
      const DeepCollectionEquality().hash(index);

  @override
  $UpdatePageCopyWith<UpdatePage> get copyWith =>
      _$UpdatePageCopyWithImpl<UpdatePage>(this, _$identity);
}

abstract class UpdatePage implements BottomNavigationState {
  const factory UpdatePage(
      {@required RawKeyString pageTitle, @required int index}) = _$UpdatePage;

  @override
  RawKeyString get pageTitle;
  @override
  int get index;
  @override
  $UpdatePageCopyWith<UpdatePage> get copyWith;
}
