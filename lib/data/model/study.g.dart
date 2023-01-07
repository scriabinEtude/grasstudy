// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Study _$$_StudyFromJson(Map<String, dynamic> json) => _$_Study(
      name: json['name'] as String,
      introduce: json['introduce'] as String,
      interestTags: (json['interestTags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_StudyToJson(_$_Study instance) => <String, dynamic>{
      'name': instance.name,
      'introduce': instance.introduce,
      'interestTags': instance.interestTags,
    };
