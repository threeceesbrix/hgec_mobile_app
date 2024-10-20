// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingInfo _$MeetingInfoFromJson(Map<String, dynamic> json) {
  return _MeetingInfo.fromJson(json);
}

/// @nodoc
mixin _$MeetingInfo {
  @JsonKey(name: 'meeting_id')
  int get meetingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_bid')
  String get meetingBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_title')
  String get meetingTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_type_id')
  int get meetingTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_date')
  DateTime get meetingDate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'meeting_start_time', fromJson: timeFromJson, toJson: timeToJson)
  TimeOfDay? get meetingStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
  TimeOfDay? get meetingEndTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_location')
  String? get meetingLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_user_id')
  int? get createdUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_date')
  DateTime? get modifiedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_user_id')
  int? get modifiedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agendaList')
  List<MeetingAgenda>? get agendaList => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendeesList')
  List<MeetingAttendee>? get attendeesList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'momList')
  List<MeetingMOM>? get momList => throw _privateConstructorUsedError;

  /// Serializes this MeetingInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingInfoCopyWith<MeetingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingInfoCopyWith<$Res> {
  factory $MeetingInfoCopyWith(
          MeetingInfo value, $Res Function(MeetingInfo) then) =
      _$MeetingInfoCopyWithImpl<$Res, MeetingInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'meeting_bid') String meetingBid,
      @JsonKey(name: 'meeting_title') String meetingTitle,
      @JsonKey(name: 'meeting_type_id') int meetingTypeId,
      @JsonKey(name: 'meeting_date') DateTime meetingDate,
      @JsonKey(
          name: 'meeting_start_time',
          fromJson: timeFromJson,
          toJson: timeToJson)
      TimeOfDay? meetingStartTime,
      @JsonKey(
          name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
      TimeOfDay? meetingEndTime,
      @JsonKey(name: 'project_id') int projectId,
      @JsonKey(name: 'meeting_location') String? meetingLocation,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId,
      @JsonKey(name: 'modified_date') DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id') int? modifiedUserId,
      @JsonKey(name: 'agendaList') List<MeetingAgenda>? agendaList,
      @JsonKey(name: 'attendeesList') List<MeetingAttendee>? attendeesList,
      @JsonKey(name: 'momList') List<MeetingMOM>? momList});
}

/// @nodoc
class _$MeetingInfoCopyWithImpl<$Res, $Val extends MeetingInfo>
    implements $MeetingInfoCopyWith<$Res> {
  _$MeetingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingId = null,
    Object? meetingBid = null,
    Object? meetingTitle = null,
    Object? meetingTypeId = null,
    Object? meetingDate = null,
    Object? meetingStartTime = freezed,
    Object? meetingEndTime = freezed,
    Object? projectId = null,
    Object? meetingLocation = freezed,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
    Object? modifiedDate = freezed,
    Object? modifiedUserId = freezed,
    Object? agendaList = freezed,
    Object? attendeesList = freezed,
    Object? momList = freezed,
  }) {
    return _then(_value.copyWith(
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingBid: null == meetingBid
          ? _value.meetingBid
          : meetingBid // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTitle: null == meetingTitle
          ? _value.meetingTitle
          : meetingTitle // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTypeId: null == meetingTypeId
          ? _value.meetingTypeId
          : meetingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingDate: null == meetingDate
          ? _value.meetingDate
          : meetingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meetingStartTime: freezed == meetingStartTime
          ? _value.meetingStartTime
          : meetingStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      meetingEndTime: freezed == meetingEndTime
          ? _value.meetingEndTime
          : meetingEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingLocation: freezed == meetingLocation
          ? _value.meetingLocation
          : meetingLocation // ignore: cast_nullable_to_non_nullable
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
      agendaList: freezed == agendaList
          ? _value.agendaList
          : agendaList // ignore: cast_nullable_to_non_nullable
              as List<MeetingAgenda>?,
      attendeesList: freezed == attendeesList
          ? _value.attendeesList
          : attendeesList // ignore: cast_nullable_to_non_nullable
              as List<MeetingAttendee>?,
      momList: freezed == momList
          ? _value.momList
          : momList // ignore: cast_nullable_to_non_nullable
              as List<MeetingMOM>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingInfoImplCopyWith<$Res>
    implements $MeetingInfoCopyWith<$Res> {
  factory _$$MeetingInfoImplCopyWith(
          _$MeetingInfoImpl value, $Res Function(_$MeetingInfoImpl) then) =
      __$$MeetingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'meeting_bid') String meetingBid,
      @JsonKey(name: 'meeting_title') String meetingTitle,
      @JsonKey(name: 'meeting_type_id') int meetingTypeId,
      @JsonKey(name: 'meeting_date') DateTime meetingDate,
      @JsonKey(
          name: 'meeting_start_time',
          fromJson: timeFromJson,
          toJson: timeToJson)
      TimeOfDay? meetingStartTime,
      @JsonKey(
          name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
      TimeOfDay? meetingEndTime,
      @JsonKey(name: 'project_id') int projectId,
      @JsonKey(name: 'meeting_location') String? meetingLocation,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId,
      @JsonKey(name: 'modified_date') DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id') int? modifiedUserId,
      @JsonKey(name: 'agendaList') List<MeetingAgenda>? agendaList,
      @JsonKey(name: 'attendeesList') List<MeetingAttendee>? attendeesList,
      @JsonKey(name: 'momList') List<MeetingMOM>? momList});
}

/// @nodoc
class __$$MeetingInfoImplCopyWithImpl<$Res>
    extends _$MeetingInfoCopyWithImpl<$Res, _$MeetingInfoImpl>
    implements _$$MeetingInfoImplCopyWith<$Res> {
  __$$MeetingInfoImplCopyWithImpl(
      _$MeetingInfoImpl _value, $Res Function(_$MeetingInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingId = null,
    Object? meetingBid = null,
    Object? meetingTitle = null,
    Object? meetingTypeId = null,
    Object? meetingDate = null,
    Object? meetingStartTime = freezed,
    Object? meetingEndTime = freezed,
    Object? projectId = null,
    Object? meetingLocation = freezed,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
    Object? modifiedDate = freezed,
    Object? modifiedUserId = freezed,
    Object? agendaList = freezed,
    Object? attendeesList = freezed,
    Object? momList = freezed,
  }) {
    return _then(_$MeetingInfoImpl(
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingBid: null == meetingBid
          ? _value.meetingBid
          : meetingBid // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTitle: null == meetingTitle
          ? _value.meetingTitle
          : meetingTitle // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTypeId: null == meetingTypeId
          ? _value.meetingTypeId
          : meetingTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingDate: null == meetingDate
          ? _value.meetingDate
          : meetingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meetingStartTime: freezed == meetingStartTime
          ? _value.meetingStartTime
          : meetingStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      meetingEndTime: freezed == meetingEndTime
          ? _value.meetingEndTime
          : meetingEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingLocation: freezed == meetingLocation
          ? _value.meetingLocation
          : meetingLocation // ignore: cast_nullable_to_non_nullable
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
      agendaList: freezed == agendaList
          ? _value._agendaList
          : agendaList // ignore: cast_nullable_to_non_nullable
              as List<MeetingAgenda>?,
      attendeesList: freezed == attendeesList
          ? _value._attendeesList
          : attendeesList // ignore: cast_nullable_to_non_nullable
              as List<MeetingAttendee>?,
      momList: freezed == momList
          ? _value._momList
          : momList // ignore: cast_nullable_to_non_nullable
              as List<MeetingMOM>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingInfoImpl implements _MeetingInfo {
  _$MeetingInfoImpl(
      {@JsonKey(name: 'meeting_id') required this.meetingId,
      @JsonKey(name: 'meeting_bid') required this.meetingBid,
      @JsonKey(name: 'meeting_title') required this.meetingTitle,
      @JsonKey(name: 'meeting_type_id') required this.meetingTypeId,
      @JsonKey(name: 'meeting_date') required this.meetingDate,
      @JsonKey(
          name: 'meeting_start_time',
          fromJson: timeFromJson,
          toJson: timeToJson)
      this.meetingStartTime,
      @JsonKey(
          name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
      this.meetingEndTime,
      @JsonKey(name: 'project_id') required this.projectId,
      @JsonKey(name: 'meeting_location') this.meetingLocation,
      @JsonKey(name: 'created_date') this.createdDate,
      @JsonKey(name: 'created_user_id') this.createdUserId,
      @JsonKey(name: 'modified_date') this.modifiedDate,
      @JsonKey(name: 'modified_user_id') this.modifiedUserId,
      @JsonKey(name: 'agendaList') final List<MeetingAgenda>? agendaList,
      @JsonKey(name: 'attendeesList')
      final List<MeetingAttendee>? attendeesList,
      @JsonKey(name: 'momList') final List<MeetingMOM>? momList})
      : _agendaList = agendaList,
        _attendeesList = attendeesList,
        _momList = momList;

  factory _$MeetingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingInfoImplFromJson(json);

  @override
  @JsonKey(name: 'meeting_id')
  final int meetingId;
  @override
  @JsonKey(name: 'meeting_bid')
  final String meetingBid;
  @override
  @JsonKey(name: 'meeting_title')
  final String meetingTitle;
  @override
  @JsonKey(name: 'meeting_type_id')
  final int meetingTypeId;
  @override
  @JsonKey(name: 'meeting_date')
  final DateTime meetingDate;
  @override
  @JsonKey(
      name: 'meeting_start_time', fromJson: timeFromJson, toJson: timeToJson)
  final TimeOfDay? meetingStartTime;
  @override
  @JsonKey(name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
  final TimeOfDay? meetingEndTime;
  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'meeting_location')
  final String? meetingLocation;
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
  final List<MeetingAgenda>? _agendaList;
  @override
  @JsonKey(name: 'agendaList')
  List<MeetingAgenda>? get agendaList {
    final value = _agendaList;
    if (value == null) return null;
    if (_agendaList is EqualUnmodifiableListView) return _agendaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MeetingAttendee>? _attendeesList;
  @override
  @JsonKey(name: 'attendeesList')
  List<MeetingAttendee>? get attendeesList {
    final value = _attendeesList;
    if (value == null) return null;
    if (_attendeesList is EqualUnmodifiableListView) return _attendeesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MeetingMOM>? _momList;
  @override
  @JsonKey(name: 'momList')
  List<MeetingMOM>? get momList {
    final value = _momList;
    if (value == null) return null;
    if (_momList is EqualUnmodifiableListView) return _momList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeetingInfo(meetingId: $meetingId, meetingBid: $meetingBid, meetingTitle: $meetingTitle, meetingTypeId: $meetingTypeId, meetingDate: $meetingDate, meetingStartTime: $meetingStartTime, meetingEndTime: $meetingEndTime, projectId: $projectId, meetingLocation: $meetingLocation, createdDate: $createdDate, createdUserId: $createdUserId, modifiedDate: $modifiedDate, modifiedUserId: $modifiedUserId, agendaList: $agendaList, attendeesList: $attendeesList, momList: $momList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingInfoImpl &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.meetingBid, meetingBid) ||
                other.meetingBid == meetingBid) &&
            (identical(other.meetingTitle, meetingTitle) ||
                other.meetingTitle == meetingTitle) &&
            (identical(other.meetingTypeId, meetingTypeId) ||
                other.meetingTypeId == meetingTypeId) &&
            (identical(other.meetingDate, meetingDate) ||
                other.meetingDate == meetingDate) &&
            (identical(other.meetingStartTime, meetingStartTime) ||
                other.meetingStartTime == meetingStartTime) &&
            (identical(other.meetingEndTime, meetingEndTime) ||
                other.meetingEndTime == meetingEndTime) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.meetingLocation, meetingLocation) ||
                other.meetingLocation == meetingLocation) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.modifiedUserId, modifiedUserId) ||
                other.modifiedUserId == modifiedUserId) &&
            const DeepCollectionEquality()
                .equals(other._agendaList, _agendaList) &&
            const DeepCollectionEquality()
                .equals(other._attendeesList, _attendeesList) &&
            const DeepCollectionEquality().equals(other._momList, _momList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      meetingId,
      meetingBid,
      meetingTitle,
      meetingTypeId,
      meetingDate,
      meetingStartTime,
      meetingEndTime,
      projectId,
      meetingLocation,
      createdDate,
      createdUserId,
      modifiedDate,
      modifiedUserId,
      const DeepCollectionEquality().hash(_agendaList),
      const DeepCollectionEquality().hash(_attendeesList),
      const DeepCollectionEquality().hash(_momList));

  /// Create a copy of MeetingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingInfoImplCopyWith<_$MeetingInfoImpl> get copyWith =>
      __$$MeetingInfoImplCopyWithImpl<_$MeetingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingInfoImplToJson(
      this,
    );
  }
}

abstract class _MeetingInfo implements MeetingInfo {
  factory _MeetingInfo(
      {@JsonKey(name: 'meeting_id') required final int meetingId,
      @JsonKey(name: 'meeting_bid') required final String meetingBid,
      @JsonKey(name: 'meeting_title') required final String meetingTitle,
      @JsonKey(name: 'meeting_type_id') required final int meetingTypeId,
      @JsonKey(name: 'meeting_date') required final DateTime meetingDate,
      @JsonKey(
          name: 'meeting_start_time',
          fromJson: timeFromJson,
          toJson: timeToJson)
      final TimeOfDay? meetingStartTime,
      @JsonKey(
          name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
      final TimeOfDay? meetingEndTime,
      @JsonKey(name: 'project_id') required final int projectId,
      @JsonKey(name: 'meeting_location') final String? meetingLocation,
      @JsonKey(name: 'created_date') final DateTime? createdDate,
      @JsonKey(name: 'created_user_id') final int? createdUserId,
      @JsonKey(name: 'modified_date') final DateTime? modifiedDate,
      @JsonKey(name: 'modified_user_id') final int? modifiedUserId,
      @JsonKey(name: 'agendaList') final List<MeetingAgenda>? agendaList,
      @JsonKey(name: 'attendeesList')
      final List<MeetingAttendee>? attendeesList,
      @JsonKey(name: 'momList')
      final List<MeetingMOM>? momList}) = _$MeetingInfoImpl;

  factory _MeetingInfo.fromJson(Map<String, dynamic> json) =
      _$MeetingInfoImpl.fromJson;

  @override
  @JsonKey(name: 'meeting_id')
  int get meetingId;
  @override
  @JsonKey(name: 'meeting_bid')
  String get meetingBid;
  @override
  @JsonKey(name: 'meeting_title')
  String get meetingTitle;
  @override
  @JsonKey(name: 'meeting_type_id')
  int get meetingTypeId;
  @override
  @JsonKey(name: 'meeting_date')
  DateTime get meetingDate;
  @override
  @JsonKey(
      name: 'meeting_start_time', fromJson: timeFromJson, toJson: timeToJson)
  TimeOfDay? get meetingStartTime;
  @override
  @JsonKey(name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
  TimeOfDay? get meetingEndTime;
  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'meeting_location')
  String? get meetingLocation;
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
  @override
  @JsonKey(name: 'agendaList')
  List<MeetingAgenda>? get agendaList;
  @override
  @JsonKey(name: 'attendeesList')
  List<MeetingAttendee>? get attendeesList;
  @override
  @JsonKey(name: 'momList')
  List<MeetingMOM>? get momList;

  /// Create a copy of MeetingInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingInfoImplCopyWith<_$MeetingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
