/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'dart:async';
import 'package:dio/dio.dart';
import 'logger.dart';

const interceptorLogName = "HTTP Interceptor";

class LoggingInterceptor extends Interceptor {
  @override
  FutureOr<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {

    logger('REQUEST', name: interceptorLogName);

    logger("--> ${options.method.toUpperCase()} ${options.baseUrl}${options.path}", name: interceptorLogName);

    logger("Request Headers:", name: interceptorLogName);

    options.headers.forEach((k, v) {
      logger('$k: $v', name: interceptorLogName);
    });
    logger('------------------------------------------------------', name: interceptorLogName);

    logger("Request queryParameters:", name: interceptorLogName);
    options.queryParameters.forEach((k, v) {
      logger('$k: $v', name: interceptorLogName);
    });
    if (options.queryParameters.isNotEmpty) logger('------------------------------------------------------', name: interceptorLogName);

    if (options.data != null) {
      try {
        prettyLogger(options.data, name: interceptorLogName, prefix: "Body: ");
      } catch (_) {
        logger("Body: ${options.data}", name: interceptorLogName);
      }
    logger('------------------------------------------------------', name: interceptorLogName);
    }

    logger("--> END ${options.method.toUpperCase()}", name: interceptorLogName);

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger('Response ERROR:', name: interceptorLogName);

    final requestOptions = err.response?.requestOptions ?? RequestOptions();
    logger("<-- ${err.message} ${requestOptions.baseUrl + requestOptions.path}", name: interceptorLogName);

    logger("${err.response != null ? err.response?.data : 'Unknown Error'}", name: interceptorLogName);

    logger("<-- End error", name: interceptorLogName);

    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger('RESPONSE:', name: interceptorLogName);

    logger("<-- ${response.statusCode} ${((response.requestOptions.baseUrl + response.requestOptions.path))}", name: interceptorLogName);

    logger("Headers:", name: interceptorLogName);
    response.headers.forEach((k, v) {
      logger('$k: $v', name: interceptorLogName);
    });
    logger('------------------------------------------------------', name: interceptorLogName);

    prettyLogger(response.data, name: interceptorLogName, prefix: "Response: ");

    logger("<-- END HTTP", name: interceptorLogName);
    logger('------------------------------------------------------', name: interceptorLogName);
    return handler.next(response);
  }
}

