// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse<T> _$$_BaseResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_BaseResponse<T>(
      message: json['message'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
    );

Map<String, dynamic> _$$_BaseResponseToJson<T>(
  _$_BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'success': instance.success,
      'status_code': instance.statusCode,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
