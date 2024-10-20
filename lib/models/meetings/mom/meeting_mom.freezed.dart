// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_mom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingMOM _$MeetingMOMFromJson(Map<String, dynamic> json) {
  return _MeetingMOM.fromJson(json);
}

/// @nodoc
mixin _$MeetingMOM {
  @JsonKey(name: 'mom_id')
  int get momId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_id')
  int get meetingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_topic')
  String get momTopic => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_desc')
  String? get momDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_type')
  String get momType => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_action_by')
  String? get momActionBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_action_due_date')
  DateTime? get momActionDueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'mom_action_status')
  String? get momActionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_user_id')
  int? get createdUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_date')
  DateTime? get modifiedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_user_id')
  int? get modifiedUserId => throw _privateConstructorUsedError;

  /// Serializes this MeetingMOM to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingMOM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingMOMCopyWith<MeetingMOM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingMOMCopyWith<$Res> {
  factory $MeetingMOMCopyWith(
          MeetingMOM value, $Res Function(MeetingMOM) then) =
      _$MeetingMOMCopyWithImpl<$Res, MeetingMOM>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mom_id') int momId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'mom_topic') String momTopic,
      @JsonKey(name: 'mom_desc') String? momDesc,
      @JsonKey(name: 'mom_type') String momType,
      @JsonKey(name: 'mom_action_by') String? momActionBy,
      @JsonKey(name: 'mom_action_due_date') DateTime? momActionDueDate,
      @JsonKey(name: 'mom_action_status') String? momActionStatus,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId,
      @JsonKey(name: 'modified_date') DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id') int? modifiedUserId});
}

/// @nodoc
class _$MeetingMOMCopyWithImpl<$Res, $Val extends MeetingMOM>
    implements $MeetingMOMCopyWith<$Res> {
  _$MeetingMOMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingMOM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? momId = null,
    Object? meetingId = null,
    Object? momTopic = null,
    Object? momDesc = freezed,
    Object? momType = null,
    Object? momActionBy = freezed,
    Object? momActionDueDate = freezed,
    Object? momActionStatus = freezed,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
    Object? modifiedDate = freezed,
    Object? modifiedUserId = freezed,
  }) {
    return _then(_value.copyWith(
      momId: null == momId
          ? _value.momId
          : momId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      momTopic: null == momTopic
          ? _value.momTopic
          : momTopic // ignore: cast_nullable_to_non_nullable
              as String,
      momDesc: freezed == momDesc
          ? _value.momDesc
          : momDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      momType: null == momType
          ? _value.momType
          : momType // ignore: cast_nullable_to_non_nullable
              as String,
      momActionBy: freezed == momActionBy
          ? _value.momActionBy
          : momActionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      momActionDueDate: freezed == momActionDueDate
          ? _value.momActionDueDate
          : momActionDueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      momActionStatus: freezed == momActionStatus
          ? _value.momActionStatus
          : momActionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdUserId: freezed == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedUserId: freezed == modifiedUserId
          ? _value.modifiedUserId
          : modifiedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingMOMImplCopyWith<$Res>
    implements $MeetingMOMCopyWith<$Res> {
  factory _$$MeetingMOMImplCopyWith(
          _$MeetingMOMImpl value, $Res Function(_$MeetingMOMImpl) then) =
      __$$MeetingMOMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mom_id') int momId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'mom_topic') String momTopic,
      @JsonKey(name: 'mom_desc') String? momDesc,
      @JsonKey(name: 'mom_type') String momType,
      @JsonKey(name: 'mom_action_by') String? momActionBy,
      @JsonKey(name: 'mom_action_due_date') DateTime? momActionDueDate,
      @JsonKey(name: 'mom_action_status') String? momActionStatus,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId,
      @JsonKey(name: 'modified_date') DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id') int? modifiedUserId});
}

/// @nodoc
class __$$MeetingMOMImplCopyWithImpl<$Res>
    extends _$MeetingMOMCopyWithImpl<$Res, _$MeetingMOMImpl>
    implements _$$MeetingMOMImplCopyWith<$Res> {
  __$$MeetingMOMImplCopyWithImpl(
      _$MeetingMOMImpl _value, $Res Function(_$MeetingMOMImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingMOM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? momId = null,
    Object? meetingId = null,
    Object? momTopic = null,
    Object? momDesc = freezed,
    Object? momType = null,
    Object? momActionBy = freezed,
    Object? momActionDueDate = freezed,
    Object? momActionStatus = freezed,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
    Object? modifiedDate = freezed,
    Object? modifiedUserId = freezed,
  }) {
    return _then(_$MeetingMOMImpl(
      momId: null == momId
          ? _value.momId
          : momId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      momTopic: null == momTopic
          ? _value.momTopic
          : momTopic // ignore: cast_nullable_to_non_nullable
              as String,
      momDesc: freezed == momDesc
          ? _value.momDesc
          : momDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      momType: null == momType
          ? _value.momType
          : momType // ignore: cast_nullable_to_non_nullable
              as String,
      momActionBy: freezed == momActionBy
          ? _value.momActionBy
          : momActionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      momActionDueDate: freezed == momActionDueDate
          ? _value.momActionDueDate
          : momActionDueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      momActionStatus: freezed == momActionStatus
          ? _value.momActionStatus
          : momActionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdUserId: freezed == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedUserId: freezed == modifiedUserId
          ? _value.modifiedUserId
          : modifiedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingMOMImpl implements _MeetingMOM {
  _$MeetingMOMImpl(
      {@JsonKey(name: 'mom_id') required this.momId,
      @JsonKey(name: 'meeting_id') required this.meetingId,
      @JsonKey(name: 'mom_topic') required this.momTopic,
      @JsonKey(name: 'mom_desc') this.momDesc,
      @JsonKey(name: 'mom_type') required this.momType,
      @JsonKey(name: 'mom_action_by') this.momActionBy,
      @JsonKey(name: 'mom_action_due_date') this.momActionDueDate,
      @JsonKey(name: 'mom_action_status') this.momActionStatus,
      @JsonKey(name: 'created_date') this.createdDate,
      @JsonKey(name: 'created_user_id') this.createdUserId,
      @JsonKey(name: 'modified_date') this.modifiedDate,
      @JsonKey(name: 'modified_user_id') this.modifiedUserId});

  factory _$MeetingMOMImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingMOMImplFromJson(json);

  @override
  @JsonKey(name: 'mom_id')
  final int momId;
  @override
  @JsonKey(name: 'meeting_id')
  final int meetingId;
  @override
  @JsonKey(name: 'mom_topic')
  final String momTopic;
  @override
  @JsonKey(name: 'mom_desc')
  final String? momDesc;
  @override
  @JsonKey(name: 'mom_type')
  final String momType;
  @override
  @JsonKey(name: 'mom_action_by')
  final String? momActionBy;
  @override
  @JsonKey(name: 'mom_action_due_date')
  final DateTime? momActionDueDate;
  @override
  @JsonKey(name: 'mom_action_status')
  final String? momActionStatus;
  @override
  @JsonKey(name: 'created_date')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  final int? createdUserId;
  @override
  @JsonKey(name: 'modified_date')
  final DateTime? modifiedDate;
  @override
  @JsonKey(name: 'modified_user_id')
  final int? modifiedUserId;

  @override
  String toString() {
    return 'MeetingMOM(momId: $momId, meetingId: $meetingId, momTopic: $momTopic, momDesc: $momDesc, momType: $momType, momActionBy: $momActionBy, momActionDueDate: $momActionDueDate, momActionStatus: $momActionStatus, createdDate: $createdDate, createdUserId: $createdUserId, modifiedDate: $modifiedDate, modifiedUserId: $modifiedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingMOMImpl &&
            (identical(other.momId, momId) || other.momId == momId) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.momTopic, momTopic) ||
                other.momTopic == momTopic) &&
            (identical(other.momDesc, momDesc) || other.momDesc == momDesc) &&
            (identical(other.momType, momType) || other.momType == momType) &&
            (identical(other.momActionBy, momActionBy) ||
                other.momActionBy == momActionBy) &&
            (identical(other.momActionDueDate, momActionDueDate) ||
                other.momActionDueDate == momActionDueDate) &&
            (identical(other.momActionStatus, momActionStatus) ||
                other.momActionStatus == momActionStatus) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.modifiedUserId, modifiedUserId) ||
                other.modifiedUserId == modifiedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      momId,
      meetingId,
      momTopic,
      momDesc,
      momType,
      momActionBy,
      momActionDueDate,
      momActionStatus,
      createdDate,
      createdUserId,
      modifiedDate,
      modifiedUserId);

  /// Create a copy of MeetingMOM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingMOMImplCopyWith<_$MeetingMOMImpl> get copyWith =>
      __$$MeetingMOMImplCopyWithImpl<_$MeetingMOMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingMOMImplToJson(
      this,
    );
  }
}

abstract class _MeetingMOM implements MeetingMOM {
  factory _MeetingMOM(
      {@JsonKey(name: 'mom_id') required final int momId,
      @JsonKey(name: 'meeting_id') required final int meetingId,
      @JsonKey(name: 'mom_topic') required final String momTopic,
      @JsonKey(name: 'mom_desc') final String? momDesc,
      @JsonKey(name: 'mom_type') required final String momType,
      @JsonKey(name: 'mom_action_by') final String? momActionBy,
      @JsonKey(name: 'mom_action_due_date') final DateTime? momActionDueDate,
      @JsonKey(name: 'mom_action_status') final String? momActionStatus,
      @JsonKey(name: 'created_date') final DateTime? createdDate,
      @JsonKey(name: 'created_user_id') final int? createdUserId,
      @JsonKey(name: 'modified_date') final DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id')
      final int? modifiedUserId}) = _$MeetingMOMImpl;

  factory _MeetingMOM.fromJson(Map<String, dynamic> json) =
      _$MeetingMOMImpl.fromJson;

  @override
  @JsonKey(name: 'mom_id')
  int get momId;
  @override
  @JsonKey(name: 'meeting_id')
  int get meetingId;
  @override
  @JsonKey(name: 'mom_topic')
  String get momTopic;
  @override
  @JsonKey(name: 'mom_desc')
  String? get momDesc;
  @override
  @JsonKey(name: 'mom_type')
  String get momType;
  @override
  @JsonKey(name: 'mom_action_by')
  String? get momActionBy;
  @override
  @JsonKey(name: 'mom_action_due_date')
  DateTime? get momActionDueDate;
  @override
  @JsonKey(name: 'mom_action_status')
  String? get momActionStatus;
  @override
  @JsonKey(name: 'created_date')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  int? get createdUserId;
  @override
  @JsonKey(name: 'modified_date')
  DateTime? get modifiedDate;
  @override
  @JsonKey(name: 'modified_user_id')
  int? get modifiedUserId;

  /// Create a copy of MeetingMOM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingMOMImplCopyWith<_$MeetingMOMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
