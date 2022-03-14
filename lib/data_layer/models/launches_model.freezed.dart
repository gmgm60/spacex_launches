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
      @JsonKey(name: "launch_success") bool launchSuccess = false,
      required Links links}) {
    return _LaunchesModel(
      flightNumber: flightNumber,
      missionName: missionName,
      launchYear: launchYear,
      launchDateLocal: launchDateLocal,
      launchSuccess: launchSuccess,
      links: links,
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
  Links get links => throw _privateConstructorUsedError;

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
      @JsonKey(name: "launch_success") bool launchSuccess,
      Links links});

  $LinksCopyWith<$Res> get links;
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
    Object? links = freezed,
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
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }

  @override
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
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
      @JsonKey(name: "launch_success") bool launchSuccess,
      Links links});

  @override
  $LinksCopyWith<$Res> get links;
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
    Object? links = freezed,
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
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
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
      @JsonKey(name: "launch_success") this.launchSuccess = false,
      required this.links});

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
  final Links links;

  @override
  String toString() {
    return 'LaunchesModel(flightNumber: $flightNumber, missionName: $missionName, launchYear: $launchYear, launchDateLocal: $launchDateLocal, launchSuccess: $launchSuccess, links: $links)';
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
                .equals(other.launchSuccess, launchSuccess) &&
            const DeepCollectionEquality().equals(other.links, links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flightNumber),
      const DeepCollectionEquality().hash(missionName),
      const DeepCollectionEquality().hash(launchYear),
      const DeepCollectionEquality().hash(launchDateLocal),
      const DeepCollectionEquality().hash(launchSuccess),
      const DeepCollectionEquality().hash(links));

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
      @JsonKey(name: "launch_success") bool launchSuccess,
      required Links links}) = _$_LaunchesModel;

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
  Links get links;
  @override
  @JsonKey(ignore: true)
  _$LaunchesModelCopyWith<_LaunchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _links.fromJson(json);
}

/// @nodoc
class _$LinksTearOff {
  const _$LinksTearOff();

  _links call({@JsonKey(name: "mission_patch") String missionPatch = ""}) {
    return _links(
      missionPatch: missionPatch,
    );
  }

  Links fromJson(Map<String, Object?> json) {
    return Links.fromJson(json);
  }
}

/// @nodoc
const $Links = _$LinksTearOff();

/// @nodoc
mixin _$Links {
  @JsonKey(name: "mission_patch")
  String get missionPatch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "mission_patch") String missionPatch});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  final Links _value;
  // ignore: unused_field
  final $Res Function(Links) _then;

  @override
  $Res call({
    Object? missionPatch = freezed,
  }) {
    return _then(_value.copyWith(
      missionPatch: missionPatch == freezed
          ? _value.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$linksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$linksCopyWith(_links value, $Res Function(_links) then) =
      __$linksCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "mission_patch") String missionPatch});
}

/// @nodoc
class __$linksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res>
    implements _$linksCopyWith<$Res> {
  __$linksCopyWithImpl(_links _value, $Res Function(_links) _then)
      : super(_value, (v) => _then(v as _links));

  @override
  _links get _value => super._value as _links;

  @override
  $Res call({
    Object? missionPatch = freezed,
  }) {
    return _then(_links(
      missionPatch: missionPatch == freezed
          ? _value.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_links implements _links {
  _$_links({@JsonKey(name: "mission_patch") this.missionPatch = ""});

  factory _$_links.fromJson(Map<String, dynamic> json) =>
      _$$_linksFromJson(json);

  @override
  @JsonKey(name: "mission_patch")
  final String missionPatch;

  @override
  String toString() {
    return 'Links(missionPatch: $missionPatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _links &&
            const DeepCollectionEquality()
                .equals(other.missionPatch, missionPatch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(missionPatch));

  @JsonKey(ignore: true)
  @override
  _$linksCopyWith<_links> get copyWith =>
      __$linksCopyWithImpl<_links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_linksToJson(this);
  }
}

abstract class _links implements Links {
  factory _links({@JsonKey(name: "mission_patch") String missionPatch}) =
      _$_links;

  factory _links.fromJson(Map<String, dynamic> json) = _$_links.fromJson;

  @override
  @JsonKey(name: "mission_patch")
  String get missionPatch;
  @override
  @JsonKey(ignore: true)
  _$linksCopyWith<_links> get copyWith => throw _privateConstructorUsedError;
}
