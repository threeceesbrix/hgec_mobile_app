// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingType _$MeetingTypeFromJson(Map<String, dynamic> json) {
  return _MeetingType.fromJson(json);
}

/// @nodoc
mixin _$MeetingType {
  @JsonKey(name: 'meeting_type_id')
  int get meetingTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_type_name')
  String get meetingTypeName => throw _privateConstructorUsedError;

  /// Serializes this MeetingType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingTypeCopyWith<MeetingType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingTypeCopyWith<$Res> {
  factory $MeetingTypeCopyWith(
          MeetingType value, $Res Function(MeetingType) then) =
      _$MeetingTypeCopyWithImpl<$Res, MeetingType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_type_id') int meetingTypeId,
      @JsonKey(name: 'meeting_type_name') String meetingTypeName});
}

/// @nodoc
class _$MeetingTypeCopyWithImpl<$Res, $Val extends MeetingType>
    implements $MeetingTypeCopyWith<$Res> {
  _$MeetingTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingTypeId = null,
    Object? meetingTypeName = null,
  }) {
    return _then(_value.copyWith(
      meetingTypeId: null == meetingTypeId
          ? _value.meetingTypeId
          : meetingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingTypeName: null == meetingTypeName
          ? _value.meetingTypeName
          : meetingTypeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingTypeImplCopyWith<$Res>
    implements $MeetingTypeCopyWith<$Res> {
  factory _$$MeetingTypeImplCopyWith(
          _$MeetingTypeImpl value, $Res Function(_$MeetingTypeImpl) then) =
      __$$MeetingTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_type_id') int meetingTypeId,
      @JsonKey(name: 'meeting_type_name') String meetingTypeName});
}

/// @nodoc
class __$$MeetingTypeImplCopyWithImpl<$Res>
    extends _$MeetingTypeCopyWithImpl<$Res, _$MeetingTypeImpl>
    implements _$$MeetingTypeImplCopyWith<$Res> {
  __$$MeetingTypeImplCopyWithImpl(
      _$MeetingTypeImpl _value, $Res Function(_$MeetingTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingTypeId = null,
    Object? meetingTypeName = null,
  }) {
    return _then(_$MeetingTypeImpl(
      meetingTypeId: null == meetingTypeId
          ? _value.meetingTypeId
          : meetingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingTypeName: null == meetingTypeName
          ? _value.meetingTypeName
          : meetingTypeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingTypeImpl implements _MeetingType {
  _$MeetingTypeImpl(
      {@JsonKey(name: 'meeting_type_id') required this.meetingTypeId,
      @JsonKey(name: 'meeting_type_name') required this.meetingTypeName});

  factory _$MeetingTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingTypeImplFromJson(json);

  @override
  @JsonKey(name: 'meeting_type_id')
  final int meetingTypeId;
  @override
  @JsonKey(name: 'meeting_type_name')
  final String meetingTypeName;

  @override
  String toString() {
    return 'MeetingType(meetingTypeId: $meetingTypeId, meetingTypeName: $meetingTypeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingTypeImpl &&
            (identical(other.meetingTypeId, meetingTypeId) ||
                other.meetingTypeId == meetingTypeId) &&
            (identical(other.meetingTypeName, meetingTypeName) ||
                other.meetingTypeName == meetingTypeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meetingTypeId, meetingTypeName);

  /// Create a copy of MeetingType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingTypeImplCopyWith<_$MeetingTypeImpl> get copyWith =>
      __$$MeetingTypeImplCopyWithImpl<_$MeetingTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingTypeImplToJson(
      this,
    );
  }
}

abstract class _MeetingType implements MeetingType {
  factory _MeetingType(
      {@JsonKey(name: 'meeting_type_id') required final int meetingTypeId,
      @JsonKey(name: 'meeting_type_name')
      required final String meetingTypeName}) = _$MeetingTypeImpl;

  factory _MeetingType.fromJson(Map<String, dynamic> json) =
      _$MeetingTypeImpl.fromJson;

  @override
  @JsonKey(name: 'meeting_type_id')
  int get meetingTypeId;
  @override
  @JsonKey(name: 'meeting_type_name')
  String get meetingTypeName;

  /// Create a copy of MeetingType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingTypeImplCopyWith<_$MeetingTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
