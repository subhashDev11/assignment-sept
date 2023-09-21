import 'package:get_it/get_it.dart';
import 'package:subhash_chandra_s_application3/repository/api_repository.dart';
import 'package:subhash_chandra_s_application3/routes/app_navigation.dart';
import 'package:subhash_chandra_s_application3/services/app_pref_service.dart';

final getIt = GetIt.instance;

void locator() {
  getIt.registerSingleton<AppPrefService>(AppPrefService());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
  getIt.registerSingleton<AppNavigation>(AppNavigation());
  getIt<AppPrefService>().init();
}
