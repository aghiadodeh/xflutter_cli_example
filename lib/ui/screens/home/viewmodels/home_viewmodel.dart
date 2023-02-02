/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
/// 
/// state management for UI
/// 
/// store and manage your liveData in [HomeParams].
import "home_params.dart";
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:xflutter_cli_example/viewmodels/base_viewmodel.dart';

class HomeViewModel extends BaseViewModel { 
  final _params = Lazy(() => HomeParams());
  HomeParams get params => _params.value;

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }
}
