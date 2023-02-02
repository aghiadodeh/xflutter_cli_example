/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
///
/// state management for UI
///
/// store and manage your liveData in [LoginParams].
import 'package:xflutter_cli_example/controllers/auth_controller.dart';
import 'package:xflutter_cli_example/events/bus_events.dart';
import 'package:xflutter_cli_example/models/data_models.dart';
import 'package:xflutter_cli_example/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_example/network/config/logger.dart';
import "login_params.dart";
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:xflutter_cli_example/viewmodels/base_viewmodel.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_example/models/forms/formz_email.dart';
import 'package:xflutter_cli_example/models/forms/formz_password.dart';

class LoginViewModel extends BaseViewModel {
  final _params = Lazy(() => LoginParams());
  LoginParams get params => _params.value;

  @override
  void onInit() {
    super.onInit();
    logger("allocated in memory", name: "LoginViewModel");
  }

  @override
  void onReady() {
    super.onReady();
    logger("Ready", name: "LoginViewModel");
  }

  @override
  void onDispose() {
    super.onDispose();
    logger("Disposed", name: "LoginViewModel");
  }

  /// update [LoginParams] some [FormzEmail] variable.
  void formzEmailChanged(MutableLiveData<FormzEmail> attr, String value) {
    final newValue = FormzEmail.dirty(value);
    attr.postValue(newValue);
  }

  /// update [LoginParams] some [FormzPassword] variable.
  void formzPasswordChanged(MutableLiveData<FormzPassword> attr, String value) {
    final newValue = FormzPassword.dirty(value);
    attr.postValue(newValue);
  }

  /// submit [LoginParams.mail] & [LoginParams.password] to server
  void login() {
    callHttpRequest<User>(
      () async {
        eventBus.fire(const SoftKeyboardEvent());
        // send request to server
        // ...

        // handle response
        const user = User(id: "1", name: "Aghiad Odeh");
        await Future.delayed(const Duration(milliseconds: 2000));
        return const BaseResponse(success: true, data: user);
      },
      loading: baseParams.loading,
      callback: (result) async {
        if (result != null) {
          await AuthController.login(result);
          params.result.postValue(true);
        }
      },
    );
  }
}
