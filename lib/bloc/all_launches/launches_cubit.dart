import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/data_layer/services/spacex_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LaunchesCubit extends Cubit<LaunchesState> {
  final SpaceXApi spaceXApi;
  int limit = 10;
  List<LaunchesModel> list = [];
  bool hasMoreData = true;

  LaunchesCubit(this.spaceXApi) : super(LaunchesState.init());

  Future<void> getLaunches() async {
    if (hasMoreData) {
      final apiResult =
          await spaceXApi.getAllLaunches(offset: list.length, limit: limit);
      apiResult
          .fold((error) => emit(LaunchesState.error(errorMsg: error.error)),
              (List<LaunchesModel> list) {
        if (list.isEmpty) hasMoreData = false;
        this.list.addAll(list);

        //emit empty state to make ui rebuild
        emit(LaunchesState.done(list: []));

        emit(LaunchesState.done(list: this.list));
      });
    }
  }

  Future<void> refreshLaunches() async {
    emit(LaunchesState.loading());
    final apiResult = await spaceXApi.getAllLaunches(offset: 0, limit: limit);
    apiResult.fold((error) => emit(LaunchesState.error(errorMsg: error.error)),
        (List<LaunchesModel> list) {
      hasMoreData = true;
      this.list.clear();
      this.list.addAll(list);
      emit(LaunchesState.done(list: this.list));
    });
  }
}
