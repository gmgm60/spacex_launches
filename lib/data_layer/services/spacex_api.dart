
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';

import 'api_error.dart';

class SpaceXApi{

  Future<Either<ApiError,List<LaunchesModel>>> getAllLaunches()async{

    List<LaunchesModel> list = [];
    try {
      final response = await Dio().get('https://api.spacexdata.com/v3/launches');
  List resList = response.data;
    print(resList);
  for (var json in resList) {
   list.add(LaunchesModel.fromJson(json));
  }
      print(list);
  return right(list);
    } catch (e) {
      print(e);
      return left(ApiError.error(error: e.toString()));
    }
    return right(list);
  }
  Future<Either<ApiError,LaunchesModel>>  getLaunch(int flightNumber)async{
    try {
      final response = await Dio().get('https://api.spacexdata.com/v3/launches/$flightNumber');

      return right(LaunchesModel.fromJson(response.data));
    } catch (e) {
      print(e);
      return left(ApiError.error(error: e.toString()));
    }
  }


}
