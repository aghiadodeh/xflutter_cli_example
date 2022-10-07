/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final String? message;
  final T? data;
  @JsonKey(name: 'status')
  final bool success;
  @JsonKey(name: 'status_code')
  final int? responseCode;

  BaseResponse({
    this.message,
    this.data,
    this.success = true,
    this.responseCode = 200,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$BaseResponseFromJson(json, (Object? json) {
        try {
          return fromJsonT(json);
        } catch (e) {
          return fromJsonT(<String, dynamic>{});
        }
      });

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$BaseResponseToJson(this, toJsonT);
}
