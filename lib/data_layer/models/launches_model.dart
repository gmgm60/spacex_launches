
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_model.freezed.dart';
part 'launches_model.g.dart';

@Freezed()
class LaunchesModel with _$LaunchesModel{

 @JsonSerializable(explicitToJson: true)
 factory LaunchesModel({
  @JsonKey(name: "flight_number")
  required int flightNumber,

  @JsonKey(name: "mission_name")
  required String missionName,

  @JsonKey(name: "launch_year")
  required String launchYear,

  @JsonKey(name: "launch_date_local")
  required String launchDateLocal,

  @JsonKey(name: "launch_success")
  @Default(false)
   bool launchSuccess,

}) = _LaunchesModel ;

 factory LaunchesModel.fromJson(Map<String, dynamic> json) =>
     _$LaunchesModelFromJson(json);
}