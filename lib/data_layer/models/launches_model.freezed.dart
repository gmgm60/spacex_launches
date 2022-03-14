// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'launches_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchesModel _$LaunchesModelFromJson(Map<String, dynamic> json) {
  return _LaunchesModel.fromJson(json);
}

/// @nodoc
class _$LaunchesModelTearOff {
  const _$LaunchesModelTearOff();

  _LaunchesModel call(
      {@JsonKey(name: "flight_number") required int flightNumber,
      @JsonKey(name: "mission_name") required String missionName,
      @JsonKey(name: "launch_year") required String launchYear,
      @JsonKey(name: "launch_date_local") required String launchDateLocal,
      @JsonKey(name: "launch_success") bool launchSuccess = false}) {
    return _LaunchesModel(
      flightNumber: flightNumber,
      missionName: missionName,
      launchYear: launchYear,
      launchDateLocal: launchDateLocal,
      launchSuccess: launchSuccess,
    );
  }

  LaunchesModel fromJson(Map<String, Object?> json) {
    return LaunchesModel.fromJson(json);
  }
}

/// @nodoc
const $LaunchesModel = _$LaunchesModelTearOff();

/// @nodoc
mixin _$LaunchesModel {
  @JsonKey(name: "flight_number")
  int get flightNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "mission_name")
  String get missionName => throw _privateConstructorUsedError;
  @JsonKey(name: "launch_year")
  String get launchYear => throw _privateConstructorUsedError;
  @JsonKey(name: "launch_date_local")
  String get launchDateLocal => throw _privateConstructorUsedError;
  @JsonKey(name: "launch_success")
  bool get launchSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchesModelCopyWith<LaunchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesModelCopyWith<$Res> {
  factory $LaunchesModelCopyWith(
          LaunchesModel value, $Res Function(LaunchesModel) then) =
      _$LaunchesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "flight_number") int flightNumber,
      @JsonKey(name: "mission_name") String missionName,
      @JsonKey(name: "launch_year") String launchYear,
      @JsonKey(name: "launch_date_local") String launchDateLocal,
      @JsonKey(name: "launch_success") bool launchSuccess});
}

/// @nodoc
class _$LaunchesModelCopyWithImpl<$Res>
    implements $LaunchesModelCopyWith<$Res> {
  _$LaunchesModelCopyWithImpl(this._value, this._then);

  final LaunchesModel _value;
  // ignore: unused_field
  final $Res Function(LaunchesModel) _then;

  @override
  $Res call({
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchYear = freezed,
    Object? launchDateLocal = freezed,
    Object? launchSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
      missionName: missionName == freezed
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      launchYear: launchYear == freezed
          ? _value.launchYear
          : launchYear // ignore: cast_nullable_to_non_nullable
              as String,
      launchDateLocal: launchDateLocal == freezed
          ? _value.launchDateLocal
          : launchDateLocal // ignore: cast_nullable_to_non_nullable
              as String,
      launchSuccess: launchSuccess == freezed
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LaunchesModelCopyWith<$Res>
    implements $LaunchesModelCopyWith<$Res> {
  factory _$LaunchesModelCopyWith(
          _LaunchesModel value, $Res Function(_LaunchesModel) then) =
      __$LaunchesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "flight_number") int flightNumber,
      @JsonKey(name: "mission_name") String missionName,
      @JsonKey(name: "launch_year") String launchYear,
      @JsonKey(name: "launch_date_local") String launchDateLocal,
      @JsonKey(name: "launch_success") bool launchSuccess});
}

/// @nodoc
class __$LaunchesModelCopyWithImpl<$Res>
    extends _$LaunchesModelCopyWithImpl<$Res>
    implements _$LaunchesModelCopyWith<$Res> {
  __$LaunchesModelCopyWithImpl(
      _LaunchesModel _value, $Res Function(_LaunchesModel) _then)
      : super(_value, (v) => _then(v as _LaunchesModel));

  @override
  _LaunchesModel get _value => super._value as _LaunchesModel;

  @override
  $Res call({
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchYear = freezed,
    Object? launchDateLocal = freezed,
    Object? launchSuccess = freezed,
  }) {
    return _then(_LaunchesModel(
      flightNumber: flightNumber == freezed
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
      missionName: missionName == freezed
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      launchYear: launchYear == freezed
          ? _value.launchYear
          : launchYear // ignore: cast_nullable_to_non_nullable
              as String,
      launchDateLocal: launchDateLocal == freezed
          ? _value.launchDateLocal
          : launchDateLocal // ignore: cast_nullable_to_non_nullable
              as String,
      launchSuccess: launchSuccess == freezed
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LaunchesModel implements _LaunchesModel {
  _$_LaunchesModel(
      {@JsonKey(name: "flight_number") required this.flightNumber,
      @JsonKey(name: "mission_name") required this.missionName,
      @JsonKey(name: "launch_year") required this.launchYear,
      @JsonKey(name: "launch_date_local") required this.launchDateLocal,
      @JsonKey(name: "launch_success") this.launchSuccess = false});

  factory _$_LaunchesModel.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchesModelFromJson(json);

  @override
  @JsonKey(name: "flight_number")
  final int flightNumber;
  @override
  @JsonKey(name: "mission_name")
  final String missionName;
  @override
  @JsonKey(name: "launch_year")
  final String launchYear;
  @override
  @JsonKey(name: "launch_date_local")
  final String launchDateLocal;
  @override
  @JsonKey(name: "launch_success")
  final bool launchSuccess;

  @override
  String toString() {
    return 'LaunchesModel(flightNumber: $flightNumber, missionName: $missionName, launchYear: $launchYear, launchDateLocal: $launchDateLocal, launchSuccess: $launchSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaunchesModel &&
            const DeepCollectionEquality()
                .equals(other.flightNumber, flightNumber) &&
            const DeepCollectionEquality()
                .equals(other.missionName, missionName) &&
            const DeepCollectionEquality()
                .equals(other.launchYear, launchYear) &&
            const DeepCollectionEquality()
                .equals(other.launchDateLocal, launchDateLocal) &&
            const DeepCollectionEquality()
                .equals(other.launchSuccess, launchSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flightNumber),
      const DeepCollectionEquality().hash(missionName),
      const DeepCollectionEquality().hash(launchYear),
      const DeepCollectionEquality().hash(launchDateLocal),
      const DeepCollectionEquality().hash(launchSuccess));

  @JsonKey(ignore: true)
  @override
  _$LaunchesModelCopyWith<_LaunchesModel> get copyWith =>
      __$LaunchesModelCopyWithImpl<_LaunchesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchesModelToJson(this);
  }
}

abstract class _LaunchesModel implements LaunchesModel {
  factory _LaunchesModel(
      {@JsonKey(name: "flight_number") required int flightNumber,
      @JsonKey(name: "mission_name") required String missionName,
      @JsonKey(name: "launch_year") required String launchYear,
      @JsonKey(name: "launch_date_local") required String launchDateLocal,
      @JsonKey(name: "launch_success") bool launchSuccess}) = _$_LaunchesModel;

  factory _LaunchesModel.fromJson(Map<String, dynamic> json) =
      _$_LaunchesModel.fromJson;

  @override
  @JsonKey(name: "flight_number")
  int get flightNumber;
  @override
  @JsonKey(name: "mission_name")
  String get missionName;
  @override
  @JsonKey(name: "launch_year")
  String get launchYear;
  @override
  @JsonKey(name: "launch_date_local")
  String get launchDateLocal;
  @override
  @JsonKey(name: "launch_success")
  bool get launchSuccess;
  @override
  @JsonKey(ignore: true)
  _$LaunchesModelCopyWith<_LaunchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
