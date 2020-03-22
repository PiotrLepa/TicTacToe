// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of login_request_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  return _LoginRequestModel.fromJson(json);
}

class _$LoginRequestModelTearOff {
  const _$LoginRequestModelTearOff();

  _LoginRequestModel call(
      {@required @JsonKey(name: 'username') String email,
      @required String password,
      @required @JsonKey(name: 'grant_type') String grantType}) {
    return _LoginRequestModel(
      email: email,
      password: password,
      grantType: grantType,
    );
  }
}

// ignore: unused_element
const $LoginRequestModel = _$LoginRequestModelTearOff();

mixin _$LoginRequestModel {
  @JsonKey(name: 'username')
  String get email;
  String get password;
  @JsonKey(name: 'grant_type')
  String get grantType;

  Map<String, dynamic> toJson();
  $LoginRequestModelCopyWith<LoginRequestModel> get copyWith;
}

abstract class $LoginRequestModelCopyWith<$Res> {
  factory $LoginRequestModelCopyWith(
          LoginRequestModel value, $Res Function(LoginRequestModel) then) =
      _$LoginRequestModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'username') String email,
      String password,
      @JsonKey(name: 'grant_type') String grantType});
}

class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._value, this._then);

  final LoginRequestModel _value;
  // ignore: unused_field
  final $Res Function(LoginRequestModel) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object grantType = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

abstract class _$LoginRequestModelCopyWith<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(
          _LoginRequestModel value, $Res Function(_LoginRequestModel) then) =
      __$LoginRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'username') String email,
      String password,
      @JsonKey(name: 'grant_type') String grantType});
}

class __$LoginRequestModelCopyWithImpl<$Res>
    extends _$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(
      _LoginRequestModel _value, $Res Function(_LoginRequestModel) _then)
      : super(_value, (v) => _then(v as _LoginRequestModel));

  @override
  _LoginRequestModel get _value => super._value as _LoginRequestModel;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object grantType = freezed,
  }) {
    return _then(_LoginRequestModel(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

@JsonSerializable()
class _$_LoginRequestModel implements _LoginRequestModel {
  const _$_LoginRequestModel(
      {@required @JsonKey(name: 'username') this.email,
      @required this.password,
      @required @JsonKey(name: 'grant_type') this.grantType})
      : assert(email != null),
        assert(password != null),
        assert(grantType != null);

  factory _$_LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestModelFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;

  @override
  String toString() {
    return 'LoginRequestModel(email: $email, password: $password, grantType: $grantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequestModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(grantType);

  @override
  _$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith =>
      __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestModelToJson(this);
  }
}

abstract class _LoginRequestModel implements LoginRequestModel {
  const factory _LoginRequestModel(
          {@required @JsonKey(name: 'username') String email,
          @required String password,
          @required @JsonKey(name: 'grant_type') String grantType}) =
      _$_LoginRequestModel;

  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestModel.fromJson;

  @override
  @JsonKey(name: 'username')
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'grant_type')
  String get grantType;
  @override
  _$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith;
}
