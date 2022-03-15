import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/bloc/view_one_launch/one_launch_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/data_layer/services/spacex_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OneLaunchCubit extends Cubit<OneLaunchState> {
  final SpaceXApi spaceXApi;

  OneLaunchCubit(this.spaceXApi) : super(OneLaunchState.init());

  Future<void> getOneLaunch({required int flightNumber}) async {
    emit(OneLaunchState.loading());
    final apiResult = await spaceXApi.getLaunch(flightNumber);
    apiResult.fold(
        (error) => emit(OneLaunchState.error(errorMsg: error.error)),
        (final LaunchesModel launchesModel) =>
            emit(OneLaunchState.done(launchesModel: launchesModel)));
  }
}
