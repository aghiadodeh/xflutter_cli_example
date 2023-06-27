/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:dio/dio.dart';
import 'env.dart';

class HttpInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final httpHeaders = {
      'Accept': 'application/json',
      'Authorization': 'Bearer {token}',
    };
    options.headers.addAll(httpHeaders);
    options.connectTimeout = const Duration(seconds: 60);
    options.receiveTimeout = const Duration(seconds: 60);
    options.sendTimeout = const Duration(seconds: 60);
    options.baseUrl = Env.apiUrl;
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // TODO: handle Unauthorized Response
    }
    super.onError(err, handler);
  }
}