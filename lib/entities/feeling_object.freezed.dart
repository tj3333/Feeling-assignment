// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeling_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeelingObject _$FeelingObjectFromJson(Map<String, dynamic> json) {
  return _FeelingObject.fromJson(json);
}

/// @nodoc
mixin _$FeelingObject {
  @JsonKey(name: 'feeling_percentage')
  FeelingPercentage? get feelingPercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'feeling_list')
  List<Feeling> get feelingList => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_arr')
  List<Video> get videoArr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingObjectCopyWith<FeelingObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingObjectCopyWith<$Res> {
  factory $FeelingObjectCopyWith(
          FeelingObject value, $Res Function(FeelingObject) then) =
      _$FeelingObjectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'feeling_percentage')
          FeelingPercentage? feelingPercentage,
      @JsonKey(name: 'feeling_list')
          List<Feeling> feelingList,
      @JsonKey(name: 'video_arr')
          List<Video> videoArr});

  $FeelingPercentageCopyWith<$Res>? get feelingPercentage;
}

/// @nodoc
class _$FeelingObjectCopyWithImpl<$Res>
    implements $FeelingObjectCopyWith<$Res> {
  _$FeelingObjectCopyWithImpl(this._value, this._then);

  final FeelingObject _value;
  // ignore: unused_field
  final $Res Function(FeelingObject) _then;

  @override
  $Res call({
    Object? feelingPercentage = freezed,
    Object? feelingList = freezed,
    Object? videoArr = freezed,
  }) {
    return _then(_value.copyWith(
      feelingPercentage: feelingPercentage == freezed
          ? _value.feelingPercentage
          : feelingPercentage // ignore: cast_nullable_to_non_nullable
              as FeelingPercentage?,
      feelingList: feelingList == freezed
          ? _value.feelingList
          : feelingList // ignore: cast_nullable_to_non_nullable
              as List<Feeling>,
      videoArr: videoArr == freezed
          ? _value.videoArr
          : videoArr // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }

  @override
  $FeelingPercentageCopyWith<$Res>? get feelingPercentage {
    if (_value.feelingPercentage == null) {
      return null;
    }

    return $FeelingPercentageCopyWith<$Res>(_value.feelingPercentage!, (value) {
      return _then(_value.copyWith(feelingPercentage: value));
    });
  }
}

/// @nodoc
abstract class _$$_FeelingObjectCopyWith<$Res>
    implements $FeelingObjectCopyWith<$Res> {
  factory _$$_FeelingObjectCopyWith(
          _$_FeelingObject value, $Res Function(_$_FeelingObject) then) =
      __$$_FeelingObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'feeling_percentage')
          FeelingPercentage? feelingPercentage,
      @JsonKey(name: 'feeling_list')
          List<Feeling> feelingList,
      @JsonKey(name: 'video_arr')
          List<Video> videoArr});

  @override
  $FeelingPercentageCopyWith<$Res>? get feelingPercentage;
}

/// @nodoc
class __$$_FeelingObjectCopyWithImpl<$Res>
    extends _$FeelingObjectCopyWithImpl<$Res>
    implements _$$_FeelingObjectCopyWith<$Res> {
  __$$_FeelingObjectCopyWithImpl(
      _$_FeelingObject _value, $Res Function(_$_FeelingObject) _then)
      : super(_value, (v) => _then(v as _$_FeelingObject));

  @override
  _$_FeelingObject get _value => super._value as _$_FeelingObject;

  @override
  $Res call({
    Object? feelingPercentage = freezed,
    Object? feelingList = freezed,
    Object? videoArr = freezed,
  }) {
    return _then(_$_FeelingObject(
      feelingPercentage: feelingPercentage == freezed
          ? _value.feelingPercentage
          : feelingPercentage // ignore: cast_nullable_to_non_nullable
              as FeelingPercentage?,
      feelingList: feelingList == freezed
          ? _value._feelingList
          : feelingList // ignore: cast_nullable_to_non_nullable
              as List<Feeling>,
      videoArr: videoArr == freezed
          ? _value._videoArr
          : videoArr // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingObject implements _FeelingObject {
  const _$_FeelingObject(
      {@JsonKey(name: 'feeling_percentage') this.feelingPercentage,
      @JsonKey(name: 'feeling_list') final List<Feeling> feelingList = const [],
      @JsonKey(name: 'video_arr') final List<Video> videoArr = const []})
      : _feelingList = feelingList,
        _videoArr = videoArr;

  factory _$_FeelingObject.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingObjectFromJson(json);

  @override
  @JsonKey(name: 'feeling_percentage')
  final FeelingPercentage? feelingPercentage;
  final List<Feeling> _feelingList;
  @override
  @JsonKey(name: 'feeling_list')
  List<Feeling> get feelingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feelingList);
  }

  final List<Video> _videoArr;
  @override
  @JsonKey(name: 'video_arr')
  List<Video> get videoArr {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoArr);
  }

  @override
  String toString() {
    return 'FeelingObject(feelingPercentage: $feelingPercentage, feelingList: $feelingList, videoArr: $videoArr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingObject &&
            const DeepCollectionEquality()
                .equals(other.feelingPercentage, feelingPercentage) &&
            const DeepCollectionEquality()
                .equals(other._feelingList, _feelingList) &&
            const DeepCollectionEquality().equals(other._videoArr, _videoArr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feelingPercentage),
      const DeepCollectionEquality().hash(_feelingList),
      const DeepCollectionEquality().hash(_videoArr));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingObjectCopyWith<_$_FeelingObject> get copyWith =>
      __$$_FeelingObjectCopyWithImpl<_$_FeelingObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingObjectToJson(this);
  }
}

abstract class _FeelingObject implements FeelingObject {
  const factory _FeelingObject(
      {@JsonKey(name: 'feeling_percentage')
          final FeelingPercentage? feelingPercentage,
      @JsonKey(name: 'feeling_list')
          final List<Feeling> feelingList,
      @JsonKey(name: 'video_arr')
          final List<Video> videoArr}) = _$_FeelingObject;

  factory _FeelingObject.fromJson(Map<String, dynamic> json) =
      _$_FeelingObject.fromJson;

  @override
  @JsonKey(name: 'feeling_percentage')
  FeelingPercentage? get feelingPercentage;
  @override
  @JsonKey(name: 'feeling_list')
  List<Feeling> get feelingList;
  @override
  @JsonKey(name: 'video_arr')
  List<Video> get videoArr;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingObjectCopyWith<_$_FeelingObject> get copyWith =>
      throw _privateConstructorUsedError;
}
