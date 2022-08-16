/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:xflutter_cli_example/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_example/ui/core/events/bus_events.dart';

abstract class BaseRepository {
  /// calling request only if device connected to internet, else return null data response
  Future<BaseResponse<T>> getResponse<T>(Future<BaseResponse<T>> Function() request) async {
    bool isOnline = await isConnectingToInternet();
    if (isOnline) {
      final response = await request.call();
      if (response.responseCode == 401) eventBus.fire(const UnauthorizedEvent());
      return response;
    } else {
      return BaseResponse<T>(
        success: false,
        message: "check_internet_connection",
        data: null,
        errors: ["check_internet_connection"],
      );
    }
  }

  /// handle request exceptions.
  Future<BaseResponse<T>> catchError<T>(e) async {
    Map<String, dynamic>? response;
    String? message;
    List<String> errors = [];
    if (kDebugMode) print(e);
    try {
      if (e is DioError) {
        if (e.response != null && e.response!.data is Map) {
          response = e.response!.data as Map<String, dynamic>;
        }
        if (response != null) message = response['message'];
        message ??= e.message;
        final serverErrors = response?["errors"];
        if (serverErrors is List) {
          for (var error in serverErrors) {
            errors.add(error.toString());
          }
        }
      } else {
        message = e.toString();
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
    return BaseResponse<T>(message: message, data: null, success: false, errors: errors);
  }
}

/// check if device connecting to internet (wifi or mobile-data)
Future<bool> isConnectingToInternet() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
}