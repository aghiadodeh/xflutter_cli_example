// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      createdAt: json['created_at'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      company: json['company'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'name': instance.name,
      'avatar': instance.avatar,
      'country': instance.country,
      'city': instance.city,
      'company': instance.company,
      'id': instance.id,
    };
