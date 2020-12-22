import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/api/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
 configureDependencies()  => $initGetIt(getIt);

@module
abstract class MyModule{
  @singleton
  Dio get dio => Dio();
  @singleton
  ApiService apiService(Dio dio) => ApiService(dio);
}