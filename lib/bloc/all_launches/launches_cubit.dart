import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/data_layer/services/spacex_api.dart';
import 'package:fact_app/get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LaunchesCubit extends Cubit<LaunchesState> {
  final SpaceXApi spaceXApi;

  LaunchesCubit(this.spaceXApi) : super(LaunchesState.init());

  Future<void> getAllLaunches() async {
    emit(LaunchesState.loading());
    final apiResult = await spaceXApi.getAllLaunches();
    apiResult.fold((error) => emit(LaunchesState.error(errorMsg: error.error)),
        (List<LaunchesModel> list) => emit(LaunchesState.done(list: list)));
  }

}
