/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_example/config/singleton_config.dart';
import 'singleton_widget.dart';

/// Create a global instance when widget state initialized,
/// and remove the instance when widget destroyed.
///
/// this make you can access the same instance from your widget children without pass any variables.
///
/// just wrap your child widget in [SingletonWidget].
///
mixin SingletonState<T extends StatefulWidget, VM extends Object> on State<T> implements StateObserver<T> {
  late VM instance;

  String? instanceName;

  /// new instance from you class.
  VM registerInstance();

  /// callback when widget initialized.
  void onInitState(VM instance) {}

  /// callback when widget destroyed.
  void onDispose() {}

  /// observe on live data variables
  void observeLiveData(StateObserver<StatefulWidget> stateObserver, VM instance) {}

  @override
  void initState() {
    instance = registerInstance();
    registerSingleton<VM>(instance, instanceName: instanceName);
    onInitState(instance);
    super.initState();
  }

  @override
  FutureOr<void> registerObservers() {
    observeLiveData(this, instance);
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  /// callback which wrap your widgets
  Widget screen(BuildContext context, VM instance);

  @override
  Widget build(BuildContext context) {
    return screen(context, instance);
  }
}
