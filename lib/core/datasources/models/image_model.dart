import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generation/core/datasources/models/breed_model.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  factory ImageModel({
    required String id,
    required String url,
    required int width,
    required int height,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
