// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'start_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$StartGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStartGameTapped(),
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStartGameTapped(),
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStartGameTapped(OnStartGameTapped value),
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStartGameTapped(OnStartGameTapped value),
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  });
}

class _$StartGameEventTearOff {
  const _$StartGameEventTearOff();

  OnStartGameTapped onStartGameTapped() {
    return const OnStartGameTapped();
  }

  OnEasyTapped onEasyTapped() {
    return const OnEasyTapped();
  }

  OnMediumTapped onMediumTapped() {
    return const OnMediumTapped();
  }

  OnHardTapped onHardTapped() {
    return const OnHardTapped();
  }
}

const $StartGameEvent = _$StartGameEventTearOff();

class _$OnStartGameTapped
    with DiagnosticableTreeMixin
    implements OnStartGameTapped {
  const _$OnStartGameTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameEvent.onStartGameTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartGameEvent.onStartGameTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnStartGameTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStartGameTapped(),
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onStartGameTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStartGameTapped(),
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onStartGameTapped != null) {
      return onStartGameTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStartGameTapped(OnStartGameTapped value),
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onStartGameTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStartGameTapped(OnStartGameTapped value),
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onStartGameTapped != null) {
      return onStartGameTapped(this);
    }
    return orElse();
  }
}

abstract class OnStartGameTapped implements StartGameEvent {
  const factory OnStartGameTapped() = _$OnStartGameTapped;
}

class _$OnEasyTapped with DiagnosticableTreeMixin implements OnEasyTapped {
  const _$OnEasyTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameEvent.onEasyTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StartGameEvent.onEasyTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnEasyTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStartGameTapped(),
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onEasyTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStartGameTapped(),
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEasyTapped != null) {
      return onEasyTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStartGameTapped(OnStartGameTapped value),
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onEasyTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStartGameTapped(OnStartGameTapped value),
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEasyTapped != null) {
      return onEasyTapped(this);
    }
    return orElse();
  }
}

abstract class OnEasyTapped implements StartGameEvent {
  const factory OnEasyTapped() = _$OnEasyTapped;
}

class _$OnMediumTapped with DiagnosticableTreeMixin implements OnMediumTapped {
  const _$OnMediumTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameEvent.onMediumTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartGameEvent.onMediumTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnMediumTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStartGameTapped(),
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onMediumTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStartGameTapped(),
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onMediumTapped != null) {
      return onMediumTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStartGameTapped(OnStartGameTapped value),
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onMediumTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStartGameTapped(OnStartGameTapped value),
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onMediumTapped != null) {
      return onMediumTapped(this);
    }
    return orElse();
  }
}

abstract class OnMediumTapped implements StartGameEvent {
  const factory OnMediumTapped() = _$OnMediumTapped;
}

class _$OnHardTapped with DiagnosticableTreeMixin implements OnHardTapped {
  const _$OnHardTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameEvent.onHardTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StartGameEvent.onHardTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnHardTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStartGameTapped(),
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onHardTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStartGameTapped(),
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onHardTapped != null) {
      return onHardTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStartGameTapped(OnStartGameTapped value),
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onStartGameTapped != null);
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onHardTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStartGameTapped(OnStartGameTapped value),
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onHardTapped != null) {
      return onHardTapped(this);
    }
    return orElse();
  }
}

abstract class OnHardTapped implements StartGameEvent {
  const factory OnHardTapped() = _$OnHardTapped;
}

mixin _$StartGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result showDifficultyLevelButtons(),
    @required Result showLoading(),
    @required Result error(RawKeyString errorMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result showDifficultyLevelButtons(),
    Result showLoading(),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(_Nothing value),
    @required
        Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    @required Result showLoading(ShowLoading value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(_Nothing value),
    Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    Result showLoading(ShowLoading value),
    Result error(Error value),
    @required Result orElse(),
  });
}

class _$StartGameStateTearOff {
  const _$StartGameStateTearOff();

  _Nothing nothing() {
    return const _Nothing();
  }

  ShowDifficultyLevelButtons showDifficultyLevelButtons() {
    return const ShowDifficultyLevelButtons();
  }

  ShowLoading showLoading() {
    return const ShowLoading();
  }

  Error error(RawKeyString errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

const $StartGameState = _$StartGameStateTearOff();

class _$_Nothing with DiagnosticableTreeMixin implements _Nothing {
  const _$_Nothing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameState.nothing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StartGameState.nothing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Nothing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result showDifficultyLevelButtons(),
    @required Result showLoading(),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return nothing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result showDifficultyLevelButtons(),
    Result showLoading(),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(_Nothing value),
    @required
        Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    @required Result showLoading(ShowLoading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(_Nothing value),
    Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    Result showLoading(ShowLoading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing(this);
    }
    return orElse();
  }
}

abstract class _Nothing implements StartGameState {
  const factory _Nothing() = _$_Nothing;
}

class _$ShowDifficultyLevelButtons
    with DiagnosticableTreeMixin
    implements ShowDifficultyLevelButtons {
  const _$ShowDifficultyLevelButtons();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameState.showDifficultyLevelButtons()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'StartGameState.showDifficultyLevelButtons'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowDifficultyLevelButtons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result showDifficultyLevelButtons(),
    @required Result showLoading(),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return showDifficultyLevelButtons();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result showDifficultyLevelButtons(),
    Result showLoading(),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showDifficultyLevelButtons != null) {
      return showDifficultyLevelButtons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(_Nothing value),
    @required
        Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    @required Result showLoading(ShowLoading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return showDifficultyLevelButtons(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(_Nothing value),
    Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    Result showLoading(ShowLoading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showDifficultyLevelButtons != null) {
      return showDifficultyLevelButtons(this);
    }
    return orElse();
  }
}

abstract class ShowDifficultyLevelButtons implements StartGameState {
  const factory ShowDifficultyLevelButtons() = _$ShowDifficultyLevelButtons;
}

class _$ShowLoading with DiagnosticableTreeMixin implements ShowLoading {
  const _$ShowLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameState.showLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StartGameState.showLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result showDifficultyLevelButtons(),
    @required Result showLoading(),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return showLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result showDifficultyLevelButtons(),
    Result showLoading(),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showLoading != null) {
      return showLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(_Nothing value),
    @required
        Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    @required Result showLoading(ShowLoading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(_Nothing value),
    Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    Result showLoading(ShowLoading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class ShowLoading implements StartGameState {
  const factory ShowLoading() = _$ShowLoading;
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartGameState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartGameState.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$Error copyWith({
    Object errorMessage = freezed,
  }) {
    return _$Error(
      errorMessage == freezed
          ? this.errorMessage
          : errorMessage as RawKeyString,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result showDifficultyLevelButtons(),
    @required Result showLoading(),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result showDifficultyLevelButtons(),
    Result showLoading(),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(_Nothing value),
    @required
        Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    @required Result showLoading(ShowLoading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(showDifficultyLevelButtons != null);
    assert(showLoading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(_Nothing value),
    Result showDifficultyLevelButtons(ShowDifficultyLevelButtons value),
    Result showLoading(ShowLoading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements StartGameState {
  const factory Error(RawKeyString errorMessage) = _$Error;

  RawKeyString get errorMessage;

  Error copyWith({RawKeyString errorMessage});
}
