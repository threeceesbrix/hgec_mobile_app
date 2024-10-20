// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SqlUserInfo _$SqlUserInfoFromJson(Map<String, dynamic> json) {
  return _SqlUserInfo.fromJson(json);
}

/// @nodoc
mixin _$SqlUserInfo {
  String get accesstoken => throw _privateConstructorUsedError;
  String? get devicetoken => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String get refreshtoken => throw _privateConstructorUsedError;
  int get userid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this SqlUserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SqlUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SqlUserInfoCopyWith<SqlUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SqlUserInfoCopyWith<$Res> {
  factory $SqlUserInfoCopyWith(
          SqlUserInfo value, $Res Function(SqlUserInfo) then) =
      _$SqlUserInfoCopyWithImpl<$Res, SqlUserInfo>;
  @useResult
  $Res call(
      {String accesstoken,
      String? devicetoken,
      int? id,
      String refreshtoken,
      int userid,
      String username});
}

/// @nodoc
class _$SqlUserInfoCopyWithImpl<$Res, $Val extends SqlUserInfo>
    implements $SqlUserInfoCopyWith<$Res> {
  _$SqlUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SqlUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesstoken = null,
    Object? devicetoken = freezed,
    Object? id = freezed,
    Object? refreshtoken = null,
    Object? userid = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      accesstoken: null == accesstoken
          ? _value.accesstoken
          : accesstoken // ignore: cast_nullable_to_non_nullable
              as String,
      devicetoken: freezed == devicetoken
          ? _value.devicetoken
          : devicetoken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshtoken: null == refreshtoken
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SqlUserInfoImplCopyWith<$Res>
    implements $SqlUserInfoCopyWith<$Res> {
  factory _$$SqlUserInfoImplCopyWith(
          _$SqlUserInfoImpl value, $Res Function(_$SqlUserInfoImpl) then) =
      __$$SqlUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accesstoken,
      String? devicetoken,
      int? id,
      String refreshtoken,
      int userid,
      String username});
}

/// @nodoc
class __$$SqlUserInfoImplCopyWithImpl<$Res>
    extends _$SqlUserInfoCopyWithImpl<$Res, _$SqlUserInfoImpl>
    implements _$$SqlUserInfoImplCopyWith<$Res> {
  __$$SqlUserInfoImplCopyWithImpl(
      _$SqlUserInfoImpl _value, $Res Function(_$SqlUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SqlUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesstoken = null,
    Object? devicetoken = freezed,
    Object? id = freezed,
    Object? refreshtoken = null,
    Object? userid = null,
    Object? username = null,
  }) {
    return _then(_$SqlUserInfoImpl(
      accesstoken: null == accesstoken
          ? _value.accesstoken
          : accesstoken // ignore: cast_nullable_to_non_nullable
              as String,
      devicetoken: freezed == devicetoken
          ? _value.devicetoken
          : devicetoken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshtoken: null == refreshtoken
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SqlUserInfoImpl implements _SqlUserInfo {
  _$SqlUserInfoImpl(
      {required this.accesstoken,
      this.devicetoken,
      this.id,
      required this.refreshtoken,
      required this.userid,
      required this.username});

  factory _$SqlUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SqlUserInfoImplFromJson(json);

  @override
  final String accesstoken;
  @override
  final String? devicetoken;
  @override
  final int? id;
  @override
  final String refreshtoken;
  @override
  final int userid;
  @override
  final String username;

  @override
  String toString() {
    return 'SqlUserInfo(accesstoken: $accesstoken, devicetoken: $devicetoken, id: $id, refreshtoken: $refreshtoken, userid: $userid, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SqlUserInfoImpl &&
            (identical(other.accesstoken, accesstoken) ||
                other.accesstoken == accesstoken) &&
            (identical(other.devicetoken, devicetoken) ||
                other.devicetoken == devicetoken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refreshtoken, refreshtoken) ||
                other.refreshtoken == refreshtoken) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accesstoken, devicetoken, id,
      refreshtoken, userid, username);

  /// Create a copy of SqlUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SqlUserInfoImplCopyWith<_$SqlUserInfoImpl> get copyWith =>
      __$$SqlUserInfoImplCopyWithImpl<_$SqlUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SqlUserInfoImplToJson(
      this,
    );
  }
}

abstract class _SqlUserInfo implements SqlUserInfo {
  factory _SqlUserInfo(
      {required final String accesstoken,
      final String? devicetoken,
      final int? id,
      required final String refreshtoken,
      required final int userid,
      required final String username}) = _$SqlUserInfoImpl;

  factory _SqlUserInfo.fromJson(Map<String, dynamic> json) =
      _$SqlUserInfoImpl.fromJson;

  @override
  String get accesstoken;
  @override
  String? get devicetoken;
  @override
  int? get id;
  @override
  String get refreshtoken;
  @override
  int get userid;
  @override
  String get username;

  /// Create a copy of SqlUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SqlUserInfoImplCopyWith<_$SqlUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
