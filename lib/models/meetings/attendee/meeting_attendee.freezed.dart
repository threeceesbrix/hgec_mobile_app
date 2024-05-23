// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_attendee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingAttendee _$MeetingAttendeeFromJson(Map<String, dynamic> json) {
  return _MeetingAttendee.fromJson(json);
}

/// @nodoc
mixin _$MeetingAttendee {
  @JsonKey(name: 'attendee_id')
  int get attendeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_id')
  int get meetingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_name')
  String? get attendeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_designation')
  String? get attendeeDesignation => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_company_name')
  String? get attendeeCompanyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'attende_mobile_no')
  String? get attendeeMobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendee_email')
  String? get attendeeEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_flg')
  int get attendanceFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_user_id')
  int? get createdUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingAttendeeCopyWith<MeetingAttendee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingAttendeeCopyWith<$Res> {
  factory $MeetingAttendeeCopyWith(
          MeetingAttendee value, $Res Function(MeetingAttendee) then) =
      _$MeetingAttendeeCopyWithImpl<$Res, MeetingAttendee>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendee_id') int attendeeId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'attendee_name') String? attendeeName,
      @JsonKey(name: 'attendee_designation') String? attendeeDesignation,
      @JsonKey(name: 'attendee_company_name') String? attendeeCompanyName,
      @JsonKey(name: 'attende_mobile_no') String? attendeeMobileNo,
      @JsonKey(name: 'attendee_email') String? attendeeEmail,
      @JsonKey(name: 'attendance_flg') int attendanceFlag,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId});
}

/// @nodoc
class _$MeetingAttendeeCopyWithImpl<$Res, $Val extends MeetingAttendee>
    implements $MeetingAttendeeCopyWith<$Res> {
  _$MeetingAttendeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendeeId = null,
    Object? meetingId = null,
    Object? employeeId = null,
    Object? attendeeName = freezed,
    Object? attendeeDesignation = freezed,
    Object? attendeeCompanyName = freezed,
    Object? attendeeMobileNo = freezed,
    Object? attendeeEmail = freezed,
    Object? attendanceFlag = null,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
  }) {
    return _then(_value.copyWith(
      attendeeId: null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      attendeeName: freezed == attendeeName
          ? _value.attendeeName
          : attendeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeDesignation: freezed == attendeeDesignation
          ? _value.attendeeDesignation
          : attendeeDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeCompanyName: freezed == attendeeCompanyName
          ? _value.attendeeCompanyName
          : attendeeCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeMobileNo: freezed == attendeeMobileNo
          ? _value.attendeeMobileNo
          : attendeeMobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeEmail: freezed == attendeeEmail
          ? _value.attendeeEmail
          : attendeeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceFlag: null == attendanceFlag
          ? _value.attendanceFlag
          : attendanceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdUserId: freezed == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingAttendeeImplCopyWith<$Res>
    implements $MeetingAttendeeCopyWith<$Res> {
  factory _$$MeetingAttendeeImplCopyWith(_$MeetingAttendeeImpl value,
          $Res Function(_$MeetingAttendeeImpl) then) =
      __$$MeetingAttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendee_id') int attendeeId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'attendee_name') String? attendeeName,
      @JsonKey(name: 'attendee_designation') String? attendeeDesignation,
      @JsonKey(name: 'attendee_company_name') String? attendeeCompanyName,
      @JsonKey(name: 'attende_mobile_no') String? attendeeMobileNo,
      @JsonKey(name: 'attendee_email') String? attendeeEmail,
      @JsonKey(name: 'attendance_flg') int attendanceFlag,
      @JsonKey(name: 'created_date') DateTime? createdDate,
      @JsonKey(name: 'created_user_id') int? createdUserId});
}

/// @nodoc
class __$$MeetingAttendeeImplCopyWithImpl<$Res>
    extends _$MeetingAttendeeCopyWithImpl<$Res, _$MeetingAttendeeImpl>
    implements _$$MeetingAttendeeImplCopyWith<$Res> {
  __$$MeetingAttendeeImplCopyWithImpl(
      _$MeetingAttendeeImpl _value, $Res Function(_$MeetingAttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendeeId = null,
    Object? meetingId = null,
    Object? employeeId = null,
    Object? attendeeName = freezed,
    Object? attendeeDesignation = freezed,
    Object? attendeeCompanyName = freezed,
    Object? attendeeMobileNo = freezed,
    Object? attendeeEmail = freezed,
    Object? attendanceFlag = null,
    Object? createdDate = freezed,
    Object? createdUserId = freezed,
  }) {
    return _then(_$MeetingAttendeeImpl(
      attendeeId: null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      attendeeName: freezed == attendeeName
          ? _value.attendeeName
          : attendeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeDesignation: freezed == attendeeDesignation
          ? _value.attendeeDesignation
          : attendeeDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeCompanyName: freezed == attendeeCompanyName
          ? _value.attendeeCompanyName
          : attendeeCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeMobileNo: freezed == attendeeMobileNo
          ? _value.attendeeMobileNo
          : attendeeMobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      attendeeEmail: freezed == attendeeEmail
          ? _value.attendeeEmail
          : attendeeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceFlag: null == attendanceFlag
          ? _value.attendanceFlag
          : attendanceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdUserId: freezed == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingAttendeeImpl implements _MeetingAttendee {
  _$MeetingAttendeeImpl(
      {@JsonKey(name: 'attendee_id') required this.attendeeId,
      @JsonKey(name: 'meeting_id') required this.meetingId,
      @JsonKey(name: 'employee_id') required this.employeeId,
      @JsonKey(name: 'attendee_name') this.attendeeName,
      @JsonKey(name: 'attendee_designation') this.attendeeDesignation,
      @JsonKey(name: 'attendee_company_name') this.attendeeCompanyName,
      @JsonKey(name: 'attende_mobile_no') this.attendeeMobileNo,
      @JsonKey(name: 'attendee_email') this.attendeeEmail,
      @JsonKey(name: 'attendance_flg') required this.attendanceFlag,
      @JsonKey(name: 'created_date') this.createdDate,
      @JsonKey(name: 'created_user_id') this.createdUserId});

  factory _$MeetingAttendeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingAttendeeImplFromJson(json);

  @override
  @JsonKey(name: 'attendee_id')
  final int attendeeId;
  @override
  @JsonKey(name: 'meeting_id')
  final int meetingId;
  @override
  @JsonKey(name: 'employee_id')
  final int employeeId;
  @override
  @JsonKey(name: 'attendee_name')
  final String? attendeeName;
  @override
  @JsonKey(name: 'attendee_designation')
  final String? attendeeDesignation;
  @override
  @JsonKey(name: 'attendee_company_name')
  final String? attendeeCompanyName;
  @override
  @JsonKey(name: 'attende_mobile_no')
  final String? attendeeMobileNo;
  @override
  @JsonKey(name: 'attendee_email')
  final String? attendeeEmail;
  @override
  @JsonKey(name: 'attendance_flg')
  final int attendanceFlag;
  @override
  @JsonKey(name: 'created_date')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  final int? createdUserId;

  @override
  String toString() {
    return 'MeetingAttendee(attendeeId: $attendeeId, meetingId: $meetingId, employeeId: $employeeId, attendeeName: $attendeeName, attendeeDesignation: $attendeeDesignation, attendeeCompanyName: $attendeeCompanyName, attendeeMobileNo: $attendeeMobileNo, attendeeEmail: $attendeeEmail, attendanceFlag: $attendanceFlag, createdDate: $createdDate, createdUserId: $createdUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingAttendeeImpl &&
            (identical(other.attendeeId, attendeeId) ||
                other.attendeeId == attendeeId) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.attendeeName, attendeeName) ||
                other.attendeeName == attendeeName) &&
            (identical(other.attendeeDesignation, attendeeDesignation) ||
                other.attendeeDesignation == attendeeDesignation) &&
            (identical(other.attendeeCompanyName, attendeeCompanyName) ||
                other.attendeeCompanyName == attendeeCompanyName) &&
            (identical(other.attendeeMobileNo, attendeeMobileNo) ||
                other.attendeeMobileNo == attendeeMobileNo) &&
            (identical(other.attendeeEmail, attendeeEmail) ||
                other.attendeeEmail == attendeeEmail) &&
            (identical(other.attendanceFlag, attendanceFlag) ||
                other.attendanceFlag == attendanceFlag) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      attendeeId,
      meetingId,
      employeeId,
      attendeeName,
      attendeeDesignation,
      attendeeCompanyName,
      attendeeMobileNo,
      attendeeEmail,
      attendanceFlag,
      createdDate,
      createdUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingAttendeeImplCopyWith<_$MeetingAttendeeImpl> get copyWith =>
      __$$MeetingAttendeeImplCopyWithImpl<_$MeetingAttendeeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingAttendeeImplToJson(
      this,
    );
  }
}

abstract class _MeetingAttendee implements MeetingAttendee {
  factory _MeetingAttendee(
      {@JsonKey(name: 'attendee_id') required final int attendeeId,
      @JsonKey(name: 'meeting_id') required final int meetingId,
      @JsonKey(name: 'employee_id') required final int employeeId,
      @JsonKey(name: 'attendee_name') final String? attendeeName,
      @JsonKey(name: 'attendee_designation') final String? attendeeDesignation,
      @JsonKey(name: 'attendee_company_name') final String? attendeeCompanyName,
      @JsonKey(name: 'attende_mobile_no') final String? attendeeMobileNo,
      @JsonKey(name: 'attendee_email') final String? attendeeEmail,
      @JsonKey(name: 'attendance_flg') required final int attendanceFlag,
      @JsonKey(name: 'created_date') final DateTime? createdDate,
      @JsonKey(name: 'created_user_id')
      final int? createdUserId}) = _$MeetingAttendeeImpl;

  factory _MeetingAttendee.fromJson(Map<String, dynamic> json) =
      _$MeetingAttendeeImpl.fromJson;

  @override
  @JsonKey(name: 'attendee_id')
  int get attendeeId;
  @override
  @JsonKey(name: 'meeting_id')
  int get meetingId;
  @override
  @JsonKey(name: 'employee_id')
  int get employeeId;
  @override
  @JsonKey(name: 'attendee_name')
  String? get attendeeName;
  @override
  @JsonKey(name: 'attendee_designation')
  String? get attendeeDesignation;
  @override
  @JsonKey(name: 'attendee_company_name')
  String? get attendeeCompanyName;
  @override
  @JsonKey(name: 'attende_mobile_no')
  String? get attendeeMobileNo;
  @override
  @JsonKey(name: 'attendee_email')
  String? get attendeeEmail;
  @override
  @JsonKey(name: 'attendance_flg')
  int get attendanceFlag;
  @override
  @JsonKey(name: 'created_date')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  int? get createdUserId;
  @override
  @JsonKey(ignore: true)
  _$$MeetingAttendeeImplCopyWith<_$MeetingAttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
