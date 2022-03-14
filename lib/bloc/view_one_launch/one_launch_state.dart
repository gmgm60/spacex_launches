
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_launch_state.freezed.dart';

@Freezed()
class OneLaunchState with _$OneLaunchState {
  factory OneLaunchState.init() = _init;
  factory OneLaunchState.loading() = _loading;
  factory OneLaunchState.done({
    required LaunchesModel launchesModel,
}) = _done;
  factory OneLaunchState.error({required String errorMsg}) = _error;

}