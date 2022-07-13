// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeling.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feeling _$FeelingFromJson(Map<String, dynamic> json) {
  return _Feeling.fromJson(json);
}

/// @nodoc
mixin _$Feeling {
  @JsonKey(name: 'user_feeling_id')
  String get userFeelingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'feeling_id')
  String get feelingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'feeling_name')
  String get feelingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'submit_time')
  String get submitTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingCopyWith<Feeling> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingCopyWith<$Res> {
  factory $FeelingCopyWith(Feeling value, $Res Function(Feeling) then) =
      _$FeelingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_feeling_id') String userFeelingId,
      @JsonKey(name: 'feeling_id') String feelingId,
      @JsonKey(name: 'feeling_name') String feelingName,
      @JsonKey(name: 'submit_time') String submitTime});
}

/// @nodoc
class _$FeelingCopyWithImpl<$Res> implements $FeelingCopyWith<$Res> {
  _$FeelingCopyWithImpl(this._value, this._then);

  final Feeling _value;
  // ignore: unused_field
  final $Res Function(Feeling) _then;

  @override
  $Res call({
    Object? userFeelingId = freezed,
    Object? feelingId = freezed,
    Object? feelingName = freezed,
    Object? submitTime = freezed,
  }) {
    return _then(_value.copyWith(
      userFeelingId: userFeelingId == freezed
          ? _value.userFeelingId
          : userFeelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingId: feelingId == freezed
          ? _value.feelingId
          : feelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingName: feelingName == freezed
          ? _value.feelingName
          : feelingName // ignore: cast_nullable_to_non_nullable
              as String,
      submitTime: submitTime == freezed
          ? _value.submitTime
          : submitTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelingCopyWith<$Res> implements $FeelingCopyWith<$Res> {
  factory _$$_FeelingCopyWith(
          _$_Feeling value, $Res Function(_$_Feeling) then) =
      __$$_FeelingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_feeling_id') String userFeelingId,
      @JsonKey(name: 'feeling_id') String feelingId,
      @JsonKey(name: 'feeling_name') String feelingName,
      @JsonKey(name: 'submit_time') String submitTime});
}

/// @nodoc
class __$$_FeelingCopyWithImpl<$Res> extends _$FeelingCopyWithImpl<$Res>
    implements _$$_FeelingCopyWith<$Res> {
  __$$_FeelingCopyWithImpl(_$_Feeling _value, $Res Function(_$_Feeling) _then)
      : super(_value, (v) => _then(v as _$_Feeling));

  @override
  _$_Feeling get _value => super._value as _$_Feeling;

  @override
  $Res call({
    Object? userFeelingId = freezed,
    Object? feelingId = freezed,
    Object? feelingName = freezed,
    Object? submitTime = freezed,
  }) {
    return _then(_$_Feeling(
      userFeelingId: userFeelingId == freezed
          ? _value.userFeelingId
          : userFeelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingId: feelingId == freezed
          ? _value.feelingId
          : feelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingName: feelingName == freezed
          ? _value.feelingName
          : feelingName // ignore: cast_nullable_to_non_nullable
              as String,
      submitTime: submitTime == freezed
          ? _value.submitTime
          : submitTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feeling implements _Feeling {
  const _$_Feeling(
      {@JsonKey(name: 'user_feeling_id') this.userFeelingId = '0',
      @JsonKey(name: 'feeling_id') this.feelingId = '0',
      @JsonKey(name: 'feeling_name') this.feelingName = '',
      @JsonKey(name: 'submit_time') this.submitTime = ''});

  factory _$_Feeling.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingFromJson(json);

  @override
  @JsonKey(name: 'user_feeling_id')
  final String userFeelingId;
  @override
  @JsonKey(name: 'feeling_id')
  final String feelingId;
  @override
  @JsonKey(name: 'feeling_name')
  final String feelingName;
  @override
  @JsonKey(name: 'submit_time')
  final String submitTime;

  @override
  String toString() {
    return 'Feeling(userFeelingId: $userFeelingId, feelingId: $feelingId, feelingName: $feelingName, submitTime: $submitTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feeling &&
            const DeepCollectionEquality()
                .equals(other.userFeelingId, userFeelingId) &&
            const DeepCollectionEquality().equals(other.feelingId, feelingId) &&
            const DeepCollectionEquality()
                .equals(other.feelingName, feelingName) &&
            const DeepCollectionEquality()
                .equals(other.submitTime, submitTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userFeelingId),
      const DeepCollectionEquality().hash(feelingId),
      const DeepCollectionEquality().hash(feelingName),
      const DeepCollectionEquality().hash(submitTime));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingCopyWith<_$_Feeling> get copyWith =>
      __$$_FeelingCopyWithImpl<_$_Feeling>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingToJson(this);
  }
}

abstract class _Feeling implements Feeling {
  const factory _Feeling(
      {@JsonKey(name: 'user_feeling_id') final String userFeelingId,
      @JsonKey(name: 'feeling_id') final String feelingId,
      @JsonKey(name: 'feeling_name') final String feelingName,
      @JsonKey(name: 'submit_time') final String submitTime}) = _$_Feeling;

  factory _Feeling.fromJson(Map<String, dynamic> json) = _$_Feeling.fromJson;

  @override
  @JsonKey(name: 'user_feeling_id')
  String get userFeelingId;
  @override
  @JsonKey(name: 'feeling_id')
  String get feelingId;
  @override
  @JsonKey(name: 'feeling_name')
  String get feelingName;
  @override
  @JsonKey(name: 'submit_time')
  String get submitTime;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingCopyWith<_$_Feeling> get copyWith =>
      throw _privateConstructorUsedError;
}
