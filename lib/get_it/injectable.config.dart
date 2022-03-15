// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/all_launches/launches_cubit.dart' as _i6;
import '../bloc/view_one_launch/one_launch_cubit.dart' as _i7;
import '../data_layer/services/dio.dart' as _i8;
import '../data_layer/services/retrofit/rest_client.dart' as _i4;
import '../data_layer/services/spacex_api.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myDioInject = _$MyDioInject();
  gh.factory<_i3.Dio>(() => myDioInject.dio);
  gh.factory<_i4.RestClient>(() => _i4.RestClient(get<_i3.Dio>()));
  gh.lazySingleton<_i5.SpaceXApi>(() => _i5.SpaceXApi(get<_i4.RestClient>()));
  gh.factory<_i6.LaunchesCubit>(() => _i6.LaunchesCubit(get<_i5.SpaceXApi>()));
  gh.factory<_i7.OneLaunchCubit>(
      () => _i7.OneLaunchCubit(get<_i5.SpaceXApi>()));
  return get;
}

class _$MyDioInject extends _i8.MyDioInject {}
