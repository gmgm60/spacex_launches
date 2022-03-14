
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error.freezed.dart';
@Freezed()
class ApiError with _$ApiError{
 factory ApiError.error({required String error}) = _error;
}