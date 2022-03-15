import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_model.freezed.dart';

part 'launches_model.g.dart';

@Freezed()
class LaunchesModel with _$LaunchesModel {

  @JsonSerializable(explicitToJson: true)
  factory LaunchesModel({
    @JsonKey(name: "flight_number") required int flightNumber,
    @JsonKey(name: "mission_name") required String missionName,
    @JsonKey(name: "launch_year") required String launchYear,
    @JsonKey(name: "launch_date_local") required String launchDateLocal,
    @JsonKey(name: "launch_success") @Default(false) bool launchSuccess,
    required Links links,
  }) = _LaunchesModel;

  factory LaunchesModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesModelFromJson(json);
}

@Freezed()
class Links with _$Links {
  factory Links({
    @JsonKey(name: "mission_patch_small")
    @Default("https://i.pinimg.com/originals/f0/b8/3b/f0b83bfe08c85e745eb178b52fb00069.png")
    String missionPatch,

  }) = _links;


  factory Links.fromJson(Map<String, dynamic> json) =>
      _$LinksFromJson(json);

}
