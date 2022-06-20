// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map json) => _$_LoginResponse(
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'token': instance.token,
    };
