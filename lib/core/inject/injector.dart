import 'package:get_it/get_it.dart';
import 'package:soundapp/core/utils/consts.dart';
import 'package:soundapp/theme.dart';

class Inject {
  static injector() {
    GetIt getIt = GetIt.instance;

    // CORE

    getIt.registerLazySingleton(() => ConstRoutes());
    getIt.registerLazySingleton(() => ThemeState());

    // DATASOURCES

    //REPOSITORIES

    //USECASES

    //BLOC
  }
}
