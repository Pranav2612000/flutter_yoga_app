// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asana_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AsanaModel _$AsanaModelFromJson(Map<String, dynamic> json) {
  return AsanaModel(
    json['uniqueName'] as String,
    json['title'] as String,
    json['hindiTitle'] as String,
    json['imageUrl'] as String,
    (json['imageUrls'] as List)?.map((e) => e as String)?.toList(),
    (json['level'] as num)?.toDouble(),
    json['description'] as String,
    json['warnings'] as String,
    json['steps'] as String,
  );
}

Map<String, dynamic> _$AsanaModelToJson(AsanaModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'title': instance.title,
      'hindiTitle': instance.hindiTitle,
      'imageUrl': instance.imageUrl,
      'imageUrls': instance.imageUrls,
      'level': instance.level,
      'description': instance.description,
      'warnings': instance.warnings,
      'steps': instance.steps,
    };
