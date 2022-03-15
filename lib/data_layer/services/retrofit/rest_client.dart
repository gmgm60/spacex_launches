import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v3/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/launches")
  Future<List<LaunchesModel>> getLaunches();

  @GET("/launches/{flightNumber}")
  Future<LaunchesModel> getLaunch(@Path("flightNumber") int flightNumber);


}