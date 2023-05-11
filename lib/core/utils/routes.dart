import 'package:flutter/material.dart';
import 'package:soundapp/core/utils/consts.dart';

import '../../features/home/presentation/ui/home_view.dart';
import '../../features/splash/presentation/ui/splash_view.dart';
import '../../theme.dart';

class Routes {
  static Map<String, WidgetBuilder> build(ConstRoutes route) {
    return {
      route.homeView: (_) => const HomeView(),
      route.splashView: (_) => const SplashView(),
    };
  }
}
