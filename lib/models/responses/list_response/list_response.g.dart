// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponse<T> _$$_ListResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ListResponse<T>(
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_ListResponseToJson<T>(
  _$_ListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data?.map(toJsonT).toList(),
    };
