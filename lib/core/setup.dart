import 'package:bookly/Features/home/data/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/search/data/repos/search_repo_implementation.dart';
import 'package:bookly/core/utilits/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>((ApiService(Dio())));
  getIt.registerSingleton<HomeRepoImplementation>(
      (HomeRepoImplementation(getIt.get<ApiService>())));
  getIt.registerSingleton<SearchRepoImplementation>(
      (SearchRepoImplementation(getIt.get<ApiService>(),)));
}
