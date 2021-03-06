/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import "package:xflutter_cli_example/ui/widgets/singleton/singleton_widget.dart";
import "../viewmodels/home_viewmodel.dart";
import 'package:xflutter_cli_example/ui/core/layouts/theme_widget.dart';

class HomeTabletScreen extends StatelessWidget {
  const HomeTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingletonWidget<HomeViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return const Center(
              child: Text("Tablet Home"),
            );
          },
        );
      },
    );
  }
}
