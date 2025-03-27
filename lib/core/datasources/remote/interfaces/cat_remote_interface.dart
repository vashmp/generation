import 'package:generation/core/datasources/models/breed_model.dart';

abstract interface class CatRemoteInterface {
  Future<List<BreedModel>> getBreeds();
}





