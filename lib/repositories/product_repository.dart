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
import 'package:xflutter_cli_example/models/responses/list_response/list_response.dart';
import 'package:xflutter_cli_example/network/product_rest_client/product_rest_client.dart';

class ProductRepository extends BaseRepository {
  final _productRestClient = Lazy<ProductRestClient>(() => ProductRestClient(GetIt.I.get<Dio>()));
  ProductRestClient get productRestClient => _productRestClient.value;

  Future<BaseResponse<Product>> create(Product product) {
    final cancelToken = CancelToken();
    return getResponse(
      () => productRestClient.create(product: product.toJson(),  cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<Product>> update(String id, Product product) {
    final cancelToken = CancelToken();
    return getResponse(
      () => productRestClient.update(id: id, product: product.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<ListResponse<Product>>> findAll(int page, {String? query}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => productRestClient.findAll(page: page, query: query, cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<Product>> findOne(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => productRestClient.findOne(id: id, cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> delete(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => productRestClient.delete(id: id, cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }
}
