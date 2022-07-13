// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeling_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeelingRequest _$FeelingRequestFromJson(Map<String, dynamic> json) {
  return _FeelingRequest.fromJson(json);
}

/// @nodoc
mixin _$FeelingRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'feeling_date')
  String get feelingDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingRequestCopyWith<FeelingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingRequestCopyWith<$Res> {
  factory $FeelingRequestCopyWith(
          FeelingRequest value, $Res Function(FeelingRequest) then) =
      _$FeelingRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'feeling_date') String feelingDate});
}

/// @nodoc
class _$FeelingRequestCopyWithImpl<$Res>
    implements $FeelingRequestCopyWith<$Res> {
  _$FeelingRequestCopyWithImpl(this._value, this._then);

  final FeelingRequest _value;
  // ignore: unused_field
  final $Res Function(FeelingRequest) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? feelingDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingDate: feelingDate == freezed
          ? _value.feelingDate
          : feelingDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelingRequestCopyWith<$Res>
    implements $FeelingRequestCopyWith<$Res> {
  factory _$$_FeelingRequestCopyWith(
          _$_FeelingRequest value, $Res Function(_$_FeelingRequest) then) =
      __$$_FeelingRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'feeling_date') String feelingDate});
}

/// @nodoc
class __$$_FeelingRequestCopyWithImpl<$Res>
    extends _$FeelingRequestCopyWithImpl<$Res>
    implements _$$_FeelingRequestCopyWith<$Res> {
  __$$_FeelingRequestCopyWithImpl(
      _$_FeelingRequest _value, $Res Function(_$_FeelingRequest) _then)
      : super(_value, (v) => _then(v as _$_FeelingRequest));

  @override
  _$_FeelingRequest get _value => super._value as _$_FeelingRequest;

  @override
  $Res call({
    Object? userId = freezed,
    Object? feelingDate = freezed,
  }) {
    return _then(_$_FeelingRequest(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingDate: feelingDate == freezed
          ? _value.feelingDate
          : feelingDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingRequest implements _FeelingRequest {
  const _$_FeelingRequest(
      {@JsonKey(name: 'user_id') this.userId = '',
      @JsonKey(name: 'feeling_date') this.feelingDate = ''});

  factory _$_FeelingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingRequestFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'feeling_date')
  final String feelingDate;

  @override
  String toString() {
    return 'FeelingRequest(userId: $userId, feelingDate: $feelingDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingRequest &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.feelingDate, feelingDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(feelingDate));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingRequestCopyWith<_$_FeelingRequest> get copyWith =>
      __$$_FeelingRequestCopyWithImpl<_$_FeelingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingRequestToJson(this);
  }
}

abstract class _FeelingRequest implements FeelingRequest {
  const factory _FeelingRequest(
          {@JsonKey(name: 'user_id') final String userId,
          @JsonKey(name: 'feeling_date') final String feelingDate}) =
      _$_FeelingRequest;

  factory _FeelingRequest.fromJson(Map<String, dynamic> json) =
      _$_FeelingRequest.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'feeling_date')
  String get feelingDate;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingRequestCopyWith<_$_FeelingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
