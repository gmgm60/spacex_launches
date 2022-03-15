import 'package:dartz/dartz.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/data_layer/services/retrofit/rest_client.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'api_error.dart';

@lazySingleton
class SpaceXApi {
  final logger = Logger();
  final RestClient restClient;

  SpaceXApi(this.restClient);

  Future<Either<ApiError, List<LaunchesModel>>> getAllLaunches({
required int limit,
required int offset,
}) async {
    try {
      final response = await restClient.getLaunches(offset: offset, limit: limit);
      return right(response);
    } catch (e) {
      return left(ApiError.error(error: e.toString()));
    }
  }

  Future<Either<ApiError, LaunchesModel>> getLaunch({
    required int flightNumber,
  }) async {
    try {
      final response = await restClient.getLaunch(
          flightNumber: flightNumber);
      return right(response);
    } catch (e) {
      return left(ApiError.error(error: e.toString()));
    }
  }
}
