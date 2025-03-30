import 'package:dio/dio.dart';

class DioRemoteDataSource {
  DioRemoteDataSource._internal();
  static final DioRemoteDataSource _instance = DioRemoteDataSource._internal();
  factory DioRemoteDataSource() => _instance;

  final dio = Dio();
}
