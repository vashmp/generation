import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generation/core/datasources/models/image_model.dart';

part 'breed_model.freezed.dart';
part 'breed_model.g.dart';

@freezed
class BreedModel with _$BreedModel {
  factory BreedModel({
    required String id,
    required String name,
    required String description,
    @JsonKey(name: 'wikipedia_url') required String wikipediaUrl,
    required List<ImageModel> image,
  }) = _BreedModel;

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);
}
