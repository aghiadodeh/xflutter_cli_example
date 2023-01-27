/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com

import 'dart:async';
import 'base_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:xflutter_cli_example/models/data_models.dart';
import 'package:xflutter_cli_example/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_example/network/user_rest_client/user_rest_client.dart';

class UserRepository extends BaseRepository {
  final _userRestClient = Lazy<UserRestClient>(() => UserRestClient(GetIt.I.get<Dio>()));
  UserRestClient get userRestClient => _userRestClient.value;

  Future<BaseResponse<User>> create(User user) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient.create(user: user,  cancelToken: cancelToken).onError((error, _) => catchError<User>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<User>> update(String id, User user) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient.update(id: id, user: user, cancelToken: cancelToken).onError((error, _) => catchError<User>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<List<User>>> findAll(int page, {String? query}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient.findAll(page: page, query: query, cancelToken: cancelToken).onError((error, _) => catchError<List<User>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<User>> findOne(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient.findOne(id: id, cancelToken: cancelToken).onError((error, _) => catchError<User>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> delete(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient.delete(id: id, cancelToken: cancelToken).onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }
}
