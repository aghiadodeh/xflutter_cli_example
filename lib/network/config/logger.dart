/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

void logger(String message, {String? name}) {
  if (kDebugMode) {
    developer.log(message, time: DateTime.now(), name: name ?? "Debug");
  }
}

void prettyLogger(dynamic data, {String? prefix, String? name}) {
  final prettyString = const JsonEncoder.withIndent('  ').convert(data);
  logger("${prefix ?? ""} $prettyString", name: name);
}