/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static SharedPreferences getPreferences() => GetIt.I.get<SharedPreferences>();

  /// config [SharedPreferences] as a global instance.
  /// 
  /// call this method in `main.dart` before `runApp()`.
  static Future<void> storageConfig() async {
    try {
      GetIt.I.registerSingleton<SharedPreferences>((await SharedPreferences.getInstance()));
    } catch (_) {}
  }

  /// save in [SharedPreferences] the applied themeMode in app (light/dark)
  static Future<void> setDarkTheme(bool darkTheme) async {
    await getPreferences().setBool('dark_theme', darkTheme);
  }

  /// detect which [ThemeMode] applied in app [ThemeMode.dark] or [ThemeMode.light].
  static ThemeMode themeMode() {
    bool? darkMode = getPreferences().getBool('dark_theme');
    var mode = ThemeMode.light;
    if (darkMode == true) mode = ThemeMode.dark;
    return mode;
  } 
}
