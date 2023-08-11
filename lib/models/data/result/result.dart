/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.idle({T? data}) = ResultIdle;

  const factory Result.loading() = ResultLoading;

  const factory Result.data(T data) = ResultData<T>;

  const factory Result.error(String? error) = ResultError<T>;
}