import 'ui/core/flex/flex_utils.dart';
import 'network/config/http_config.dart';
import 'router/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'config/ui_config.dart';
import 'ui/core/events/bus_events.dart';
import 'dart:io';
import 'config/http_overrides.dart';
import 'package:xflutter_cli_example/ui/core/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:xflutter_cli_example/ui/resources/themes/themes_night.dart';
import 'package:xflutter_cli_example/ui/resources/themes/themes.dart';
import 'package:xflutter_cli_example/storage/storage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  HttpOverrides.global = AppHttpOverrides();

  await AppStorage.storageConfig();
  await httpConfig();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en', 'US')],
        path: 'assets/localization',
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    calcFlexSize(context);
    // TODO: uiConfig(); // uncomment this method to config ui such as setup app Orientation (portrait and landscape)
    _handleSoftkeyboardEvents();
    _handleUnauthorizedEvent();
  }

  /// hide soft keyboard when (non-context class) emit event
  _handleSoftkeyboardEvents() {
    eventBus.on<SoftKeyboardEvent>().listen((event) {
      hideSoftKeyboard(context);
    });
  }

  /// logOut
  _handleUnauthorizedEvent() {
    eventBus.on<UnauthorizedEvent>().listen((event) async {
      // TODO: handle Unauthorized Event
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => hideSoftKeyboard(context),
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        themeMode: context.watch<ThemeProvider>().mode,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
      ),
    );
  }
}
