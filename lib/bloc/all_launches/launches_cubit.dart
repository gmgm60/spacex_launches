import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/data_layer/services/spacex_api.dart';
import 'package:fact_app/get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchesCubit extends Cubit<LaunchesState> {
  SpaceXApi spaceXApi = AppGetIt.restClient();

  LaunchesCubit() : super(LaunchesState.init());

  Future<void> getAllLaunches() async {
    emit(LaunchesState.loading());
    final apiResult = await spaceXApi.getAllLaunches();
    apiResult.fold((error) => emit(LaunchesState.error(errorMsg: error.error)),
        (List<LaunchesModel> list) => emit(LaunchesState.done(list: list)));
  }

}
