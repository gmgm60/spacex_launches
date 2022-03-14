// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchesModel _$$_LaunchesModelFromJson(Map<String, dynamic> json) =>
    _$_LaunchesModel(
      flightNumber: json['flight_number'] as int,
      missionName: json['mission_name'] as String,
      launchYear: json['launch_year'] as String,
      launchDateLocal: json['launch_date_local'] as String,
      launchSuccess: json['launch_success'] as bool? ?? false,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LaunchesModelToJson(_$_LaunchesModel instance) =>
    <String, dynamic>{
      'flight_number': instance.flightNumber,
      'mission_name': instance.missionName,
      'launch_year': instance.launchYear,
      'launch_date_local': instance.launchDateLocal,
      'launch_success': instance.launchSuccess,
      'links': instance.links.toJson(),
    };

_$_links _$$_linksFromJson(Map<String, dynamic> json) => _$_links(
      missionPatch: json['mission_patch'] as String? ?? "",
    );

Map<String, dynamic> _$$_linksToJson(_$_links instance) => <String, dynamic>{
      'mission_patch': instance.missionPatch,
    };
