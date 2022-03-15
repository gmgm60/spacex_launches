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
      missionPatch: json['mission_patch_small'] as String? ??
          "https://i.pinimg.com/originals/f0/b8/3b/f0b83bfe08c85e745eb178b52fb00069.png",
    );

Map<String, dynamic> _$$_linksToJson(_$_links instance) => <String, dynamic>{
      'mission_patch_small': instance.missionPatch,
    };
