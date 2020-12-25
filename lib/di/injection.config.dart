// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../domain/usage/add_contact.dart';
import '../data/api/api_service.dart';
import '../core/connection.dart';
import '../data/repository/repositoryImpl.dart';
import '../domain/usage/delete_contact.dart';
import '../domain/usage/get_contact.dart';
import '../presentation/bloc/get/get_contact_cubit.dart';
import 'injection.dart';
import '../domain/repository/repository.dart';
import '../domain/usage/update_contact.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final myModule = _$MyModule();
  gh.factory<ConnectionCheck>(() => ConnectionCheckImpl());
  gh.lazySingleton<ApiService>(() => myModule.apiService(get<Dio>()));
  gh.factory<Repository>(
      () => ContactRepositoryImpl(get<ApiService>(), get<ConnectionCheck>()));
  gh.factory<UpdateContact>(() => UpdateContact(get<Repository>()));
  gh.factory<AddContact>(() => AddContact(get<Repository>()));
  gh.factory<DeleteContact>(() => DeleteContact(get<Repository>()));
  gh.factory<GetContact>(() => GetContact(get<Repository>()));
  gh.factory<GetContactCubit>(() => GetContactCubit(get<GetContact>()));

  // Eager singletons must be registered in the right order
  gh.singleton<Dio>(myModule.dio);
  return get;
}

class _$MyModule extends MyModule {}
