import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokumemo_plus/core/repository/network_error.dart';

part 'api_result.freezed.dart';
@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;
  const factory Result.failure(DioError error) = Failure<T>;
}