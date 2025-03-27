// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) {
  return _BreedModel.fromJson(json);
}

/// @nodoc
mixin _$BreedModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia_url')
  String get wikipediaUrl => throw _privateConstructorUsedError;
  List<ImageModel> get image => throw _privateConstructorUsedError;

  /// Serializes this BreedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedModelCopyWith<BreedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedModelCopyWith<$Res> {
  factory $BreedModelCopyWith(
          BreedModel value, $Res Function(BreedModel) then) =
      _$BreedModelCopyWithImpl<$Res, BreedModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: 'wikipedia_url') String wikipediaUrl,
      List<ImageModel> image});
}

/// @nodoc
class _$BreedModelCopyWithImpl<$Res, $Val extends BreedModel>
    implements $BreedModelCopyWith<$Res> {
  _$BreedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? wikipediaUrl = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wikipediaUrl: null == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedModelImplCopyWith<$Res>
    implements $BreedModelCopyWith<$Res> {
  factory _$$BreedModelImplCopyWith(
          _$BreedModelImpl value, $Res Function(_$BreedModelImpl) then) =
      __$$BreedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      @JsonKey(name: 'wikipedia_url') String wikipediaUrl,
      List<ImageModel> image});
}

/// @nodoc
class __$$BreedModelImplCopyWithImpl<$Res>
    extends _$BreedModelCopyWithImpl<$Res, _$BreedModelImpl>
    implements _$$BreedModelImplCopyWith<$Res> {
  __$$BreedModelImplCopyWithImpl(
      _$BreedModelImpl _value, $Res Function(_$BreedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? wikipediaUrl = null,
    Object? image = null,
  }) {
    return _then(_$BreedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wikipediaUrl: null == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedModelImpl implements _BreedModel {
  _$BreedModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'wikipedia_url') required this.wikipediaUrl,
      required final List<ImageModel> image})
      : _image = image;

  factory _$BreedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'wikipedia_url')
  final String wikipediaUrl;
  final List<ImageModel> _image;
  @override
  List<ImageModel> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'BreedModel(id: $id, name: $name, description: $description, wikipediaUrl: $wikipediaUrl, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.wikipediaUrl, wikipediaUrl) ||
                other.wikipediaUrl == wikipediaUrl) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      wikipediaUrl, const DeepCollectionEquality().hash(_image));

  /// Create a copy of BreedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedModelImplCopyWith<_$BreedModelImpl> get copyWith =>
      __$$BreedModelImplCopyWithImpl<_$BreedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedModelImplToJson(
      this,
    );
  }
}

abstract class _BreedModel implements BreedModel {
  factory _BreedModel(
      {required final String id,
      required final String name,
      required final String description,
      @JsonKey(name: 'wikipedia_url') required final String wikipediaUrl,
      required final List<ImageModel> image}) = _$BreedModelImpl;

  factory _BreedModel.fromJson(Map<String, dynamic> json) =
      _$BreedModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'wikipedia_url')
  String get wikipediaUrl;
  @override
  List<ImageModel> get image;

  /// Create a copy of BreedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedModelImplCopyWith<_$BreedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
