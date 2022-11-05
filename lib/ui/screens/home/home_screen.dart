/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import "package:xflutter_cli_example/ui/widgets/instance/instance_state.dart";
import "./viewmodels/home_viewmodel.dart";
import 'package:xflutter_cli_example/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_example/ui/core/responsive/screen_type_layout.dart';
import 'mobile/home_mobile_screen.dart';
import 'tablet/home_tablet_screen.dart';
import 'package:xflutter_cli_example/ui/core/layouts/base_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with InstanceState<HomeScreen, HomeViewModel>, StateObserver {
  @override
  Widget screen(BuildContext context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) {
            return const ScreenTypeLayout(
              mobile: HomeMobileScreen(),
              tablet: HomeTabletScreen(),
            );
          },
        ),
        LoadingListenerWidget(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  HomeViewModel registerInstance() => HomeViewModel();
}
