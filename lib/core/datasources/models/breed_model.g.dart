// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedModelImpl _$$BreedModelImplFromJson(Map<String, dynamic> json) =>
    _$BreedModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      wikipediaUrl: json['wikipedia_url'] as String,
      image: (json['image'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BreedModelImplToJson(_$BreedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'wikipedia_url': instance.wikipediaUrl,
      'image': instance.image,
    };
