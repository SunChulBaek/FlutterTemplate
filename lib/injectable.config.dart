// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:event_bus/event_bus.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i6;

import 'data/repository.dart' as _i9;
import 'data/rest_client.dart' as _i7;
import 'di/api_module.dart' as _i11;
import 'di/app_module.dart' as _i12;
import 'ui/home/tab1/tab1_view_model.dart' as _i10;
import 'ui/home/tab3/counter_view_model.dart' as _i4;
import 'ui/model/ui_state.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  final appModule = _$AppModule();
  gh.factory<_i3.BaseOptions>(() => apiModule.options);
  gh.factory<_i4.CounterViewModel>(() => _i4.CounterViewModel());
  gh.factory<_i3.Dio>(() => apiModule.dio);
  gh.singleton<_i5.EventBus>(appModule.eventBus);
  gh.factory<Map<String, dynamic>>(() => apiModule.headers);
  gh.factory<_i6.PrettyDioLogger>(() => apiModule.logger);
  gh.singleton<_i7.RestClient>(_i7.RestClient.from(gh<_i3.Dio>()));
  gh.factory<_i8.UiState>(() => _i8.UiState.from());
  gh.factory<_i9.Repository>(() => _i9.Repository(gh<_i7.RestClient>()));
  gh.factory<_i10.Tab1ViewModel>(
      () => _i10.Tab1ViewModel(repository: gh<_i9.Repository>()));
  return getIt;
}

class _$ApiModule extends _i11.ApiModule {}

class _$AppModule extends _i12.AppModule {}
