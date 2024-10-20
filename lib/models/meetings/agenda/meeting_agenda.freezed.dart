// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_agenda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingAgenda _$MeetingAgendaFromJson(Map<String, dynamic> json) {
  return _MeetingAgenda.fromJson(json);
}

/// @nodoc
mixin _$MeetingAgenda {
  @JsonKey(name: 'meeting_agenda_id')
  int get meetingAgendaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_id')
  int get meetingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_agenda')
  String get meetingAgenda => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_user_id')
  int get createdUserId => throw _privateConstructorUsedError;

  /// Serializes this MeetingAgenda to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingAgenda
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingAgendaCopyWith<MeetingAgenda> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingAgendaCopyWith<$Res> {
  factory $MeetingAgendaCopyWith(
          MeetingAgenda value, $Res Function(MeetingAgenda) then) =
      _$MeetingAgendaCopyWithImpl<$Res, MeetingAgenda>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_agenda_id') int meetingAgendaId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'meeting_agenda') String meetingAgenda,
      @JsonKey(name: 'created_date') DateTime createdDate,
      @JsonKey(name: 'created_user_id') int createdUserId});
}

/// @nodoc
class _$MeetingAgendaCopyWithImpl<$Res, $Val extends MeetingAgenda>
    implements $MeetingAgendaCopyWith<$Res> {
  _$MeetingAgendaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingAgenda
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingAgendaId = null,
    Object? meetingId = null,
    Object? meetingAgenda = null,
    Object? createdDate = null,
    Object? createdUserId = null,
  }) {
    return _then(_value.copyWith(
      meetingAgendaId: null == meetingAgendaId
          ? _value.meetingAgendaId
          : meetingAgendaId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingAgenda: null == meetingAgenda
          ? _value.meetingAgenda
          : meetingAgenda // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingAgendaImplCopyWith<$Res>
    implements $MeetingAgendaCopyWith<$Res> {
  factory _$$MeetingAgendaImplCopyWith(
          _$MeetingAgendaImpl value, $Res Function(_$MeetingAgendaImpl) then) =
      __$$MeetingAgendaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meeting_agenda_id') int meetingAgendaId,
      @JsonKey(name: 'meeting_id') int meetingId,
      @JsonKey(name: 'meeting_agenda') String meetingAgenda,
      @JsonKey(name: 'created_date') DateTime createdDate,
      @JsonKey(name: 'created_user_id') int createdUserId});
}

/// @nodoc
class __$$MeetingAgendaImplCopyWithImpl<$Res>
    extends _$MeetingAgendaCopyWithImpl<$Res, _$MeetingAgendaImpl>
    implements _$$MeetingAgendaImplCopyWith<$Res> {
  __$$MeetingAgendaImplCopyWithImpl(
      _$MeetingAgendaImpl _value, $Res Function(_$MeetingAgendaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingAgenda
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingAgendaId = null,
    Object? meetingId = null,
    Object? meetingAgenda = null,
    Object? createdDate = null,
    Object? createdUserId = null,
  }) {
    return _then(_$MeetingAgendaImpl(
      meetingAgendaId: null == meetingAgendaId
          ? _value.meetingAgendaId
          : meetingAgendaId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as int,
      meetingAgenda: null == meetingAgenda
          ? _value.meetingAgenda
          : meetingAgenda // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingAgendaImpl implements _MeetingAgenda {
  const _$MeetingAgendaImpl(
      {@JsonKey(name: 'meeting_agenda_id') required this.meetingAgendaId,
      @JsonKey(name: 'meeting_id') required this.meetingId,
      @JsonKey(name: 'meeting_agenda') required this.meetingAgenda,
      @JsonKey(name: 'created_date') required this.createdDate,
      @JsonKey(name: 'created_user_id') required this.createdUserId});

  factory _$MeetingAgendaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingAgendaImplFromJson(json);

  @override
  @JsonKey(name: 'meeting_agenda_id')
  final int meetingAgendaId;
  @override
  @JsonKey(name: 'meeting_id')
  final int meetingId;
  @override
  @JsonKey(name: 'meeting_agenda')
  final String meetingAgenda;
  @override
  @JsonKey(name: 'created_date')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  final int createdUserId;

  @override
  String toString() {
    return 'MeetingAgenda(meetingAgendaId: $meetingAgendaId, meetingId: $meetingId, meetingAgenda: $meetingAgenda, createdDate: $createdDate, createdUserId: $createdUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingAgendaImpl &&
            (identical(other.meetingAgendaId, meetingAgendaId) ||
                other.meetingAgendaId == meetingAgendaId) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.meetingAgenda, meetingAgenda) ||
                other.meetingAgenda == meetingAgenda) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meetingAgendaId, meetingId,
      meetingAgenda, createdDate, createdUserId);

  /// Create a copy of MeetingAgenda
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingAgendaImplCopyWith<_$MeetingAgendaImpl> get copyWith =>
      __$$MeetingAgendaImplCopyWithImpl<_$MeetingAgendaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingAgendaImplToJson(
      this,
    );
  }
}

abstract class _MeetingAgenda implements MeetingAgenda {
  const factory _MeetingAgenda(
      {@JsonKey(name: 'meeting_agenda_id') required final int meetingAgendaId,
      @JsonKey(name: 'meeting_id') required final int meetingId,
      @JsonKey(name: 'meeting_agenda') required final String meetingAgenda,
      @JsonKey(name: 'created_date') required final DateTime createdDate,
      @JsonKey(name: 'created_user_id')
      required final int createdUserId}) = _$MeetingAgendaImpl;

  factory _MeetingAgenda.fromJson(Map<String, dynamic> json) =
      _$MeetingAgendaImpl.fromJson;

  @override
  @JsonKey(name: 'meeting_agenda_id')
  int get meetingAgendaId;
  @override
  @JsonKey(name: 'meeting_id')
  int get meetingId;
  @override
  @JsonKey(name: 'meeting_agenda')
  String get meetingAgenda;
  @override
  @JsonKey(name: 'created_date')
  DateTime get createdDate;
  @override
  @JsonKey(name: 'created_user_id')
  int get createdUserId;

  /// Create a copy of MeetingAgenda
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingAgendaImplCopyWith<_$MeetingAgendaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
