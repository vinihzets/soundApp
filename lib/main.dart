import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:soundapp/core/inject/injector.dart';
import 'package:soundapp/core/utils/consts.dart';
import 'package:soundapp/core/utils/routes.dart';
import 'package:soundapp/theme.dart';

void main() {
  Inject.injector();

  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late ConstRoutes routes;
  late ThemeState theme;

  @override
  void initState() {
    theme = GetIt.I.get();
    routes = GetIt.I.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: theme.isDarkState,
      builder: (BuildContext context, value, child) {
        return MaterialApp(
          theme: theme.isDarkState.value
              ? theme.themeDarkState
              : theme.themeLightState,
          initialRoute: routes.splashView,
          routes: Routes.build(routes),
        );
      },
    );
  }
}
