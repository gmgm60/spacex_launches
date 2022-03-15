
import 'package:dio/dio.dart';
import 'package:fact_app/data_layer/services/retrofit/rest_client.dart';
import 'package:fact_app/data_layer/services/spacex_api.dart';
import 'package:get_it/get_it.dart';

class AppGetIt {

 static void  setup(){
    GetIt.I.registerSingleton<SpaceXApi>(SpaceXApi());
  }

 static SpaceXApi restClient() => GetIt.I<SpaceXApi>();














}