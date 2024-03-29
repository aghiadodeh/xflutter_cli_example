/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:xflutter_cli_example/models/responses/base_response/base_response.dart';

abstract class BaseRepository {
  final List<CancelToken> cancelTokens = [];

  /// calling request only if device connected to internet, else return null data response
  Future<BaseResponse<T>> getResponse<T>(Future<BaseResponse<T>> Function() request, {CancelToken? cancelToken}) async {
    bool isOnline = await isConnectingToInternet();
    if (isOnline) {
      if (cancelToken != null) cancelTokens.add(cancelToken);
      final response = await request.call();
      if (cancelToken != null) cancelTokens.remove(cancelToken);
      return response;
    } else {
      return BaseResponse<T>(
        success: false,
        message: "check_internet_connection",
        data: null,
      );
    }
  }

  /// handle request exceptions.
  Future<BaseResponse<T>> catchError<T>(e) async {
    Map<String, dynamic>? response;
    String? message;
    bool success = true;
    if (kDebugMode) print(e);
    try {
      if (e is DioException && e.type != DioExceptionType.cancel) {
        success = false;
        if (e.response != null && e.response!.data is Map) {
          response = e.response!.data as Map<String, dynamic>;
        }
        if (response != null) message = response['message'];
        message ??= e.message;
      } else {
        message = e.toString();
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
    return BaseResponse<T>(message: message, data: null, success: success);
  }

  /// cancel all pending requests
  void dispose() {
    for (var cancelToken in cancelTokens) {
      cancelToken.cancel();
    }
    cancelTokens.clear();
  }
}

/// check if device connecting to internet (wifi or mobile-data)
Future<bool> isConnectingToInternet() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
}
