/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:xflutter_cli_example/models/ui_models/ui_message.dart';
import 'package:xflutter_cli_example/extensions/live_data_extension.dart';

class BaseParams {
  /// request in progress
  final loading = false.liveData;

  /// UI [SnackBar] message
  final uiMessage = UiMessage().liveData;
}