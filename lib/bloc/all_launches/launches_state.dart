
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_state.freezed.dart';

@Freezed()
class LaunchesState with _$LaunchesState {
  factory LaunchesState.init() = _init;
  factory LaunchesState.loading() = _loading;
  factory LaunchesState.done({
    required List<LaunchesModel> list,
}) = _done;
  factory LaunchesState.error({required String errorMsg}) = _error;

}