import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:generation/core/datasources/models/breed_model.dart';
import 'package:generation/core/datasources/remote/interfaces/cat_remote_interface.dart';

part 'cat_remote_retrofit_repo.g.dart';

@RestApi(baseUrl: 'https://api.thecatapi.com/v1/')
abstract class CatRemoteRetrofitRepo implements CatRemoteInterface {
  factory CatRemoteRetrofitRepo(Dio dio, {String? baseUrl}) =
      _CatRemoteRetrofitRepo;

  @override
  @GET('/breeds')
  @Headers(<String, String>{
    'x-api-key':
        'live_IGPkEz1l0dPnozRLq0y5YpsNjTywPvqMR0nNcGgXJSWks0qy3q2HR4nP819GhZP6'
  })
  Future<List<BreedModel>> getBreeds();
}
