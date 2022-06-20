/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import "package:xflutter_cli_example/ui/widgets/singleton/singleton_instance.dart";
import "./viewmodels/home_viewmodel.dart";
import 'package:xflutter_cli_example/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_example/ui/widgets/snackbar.dart';
import 'package:xflutter_cli_example/ui/core/responsive/screen_type_layout.dart';
import 'mobile/home_mobile_screen.dart';
import 'tablet/home_tablet_screen.dart';
import 'package:xflutter_cli_example/ui/core/layouts/base_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingletonInstance<HomeViewModel>(
      instance: HomeViewModel(),
      initState: (viewModel) {},
      registerObservers: (lifeCycle, viewModel) {},
      dispose: (viewModel) {},
      builder: (viewModel) {
        return Stack(
          children: [
            BaseScaffold(
              builder: (context, theme) {
                return const SafeArea(
                  child: ScreenTypeLayout(
                    mobile: HomeMobileScreen(),
                    tablet: HomeTabletScreen(),
                  ),
                );
              },
            ),
            LoadingListenerWidget(loading: viewModel.params.loading),
            SnackBarMessageListener(uiMessage: viewModel.params.uiMessage),
          ],
        );
      },
    );
  }
}
