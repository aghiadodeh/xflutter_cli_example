/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'singleton_instance.dart';
import 'package:xflutter_cli_example/config/singleton_config.dart';

class SingletonWidget<T extends Object> extends StatefulWidget {
  /// callback which wrap your widgets with the same global instance you registered in [SingletonInstance].
  final Widget Function(T singleton) builder;

  /// wrap child widgets with the same global instance which registered in [SingletonInstance].
  /// 
  /// avoid passing variables from parent to children.
  /// 
  /// just create instance in the parent in use this instance in the children widgets.
  const SingletonWidget({required this.builder, Key? key}) : super(key: key);

  @override
  State<SingletonWidget> createState() => _SingletonWidgetState<T>();
}

class _SingletonWidgetState<T extends Object> extends State<SingletonWidget<T>> {

  @override
  Widget build(BuildContext context) {
    return widget.builder.call(getSingleton<T>());
  }
}