/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:xflutter_cli_example/ui/screens/home/home_screen.dart';
import 'package:xflutter_cli_example/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(path: '/home', page: HomeScreen, name: 'Home'),
    AutoRoute(path: '/login', page: LoginScreen, name: 'Login', initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();
