// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      password: json['password'] as String,
      interestTags: (json['interestTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'nickname': instance.nickname,
      'password': instance.password,
      'interestTags': instance.interestTags,
    };
