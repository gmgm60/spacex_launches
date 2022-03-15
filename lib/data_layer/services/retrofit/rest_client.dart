import 'package:auto_route/annotations.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v3/")
//@Environment(InjectInv.prod)
@injectable
abstract class RestClient {

  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;



  @GET("/launches")
  Future<List<LaunchesModel>> getLaunches({
    @Query("limit") required int limit,
    @Query("offset") required int offset,
});

  @GET("/launches/{flightNumber}")
  Future<LaunchesModel> getLaunch({
    @Path("flightNumber")required int flightNumber,
  });


}