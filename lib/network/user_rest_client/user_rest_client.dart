/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:xflutter_cli_example/network/config/env.dart';
import 'package:xflutter_cli_example/models/data_models.dart';
import 'package:xflutter_cli_example/models/responses/base_response/base_response.dart';
part 'user_rest_client.g.dart';

@RestApi(baseUrl: "${Env.apiUrl}/user")
abstract class UserRestClient {
  factory UserRestClient(Dio dio) = _UserRestClient;

  @POST("")
  Future<BaseResponse<User>> create({
    @Body() required User user,
  });

  @PUT("/{id}")
  Future<BaseResponse<User>> update({
    @Path() required String id,
    @Body() required User user,
  });

  @GET("")
  Future<BaseResponse<List<User>>> findAll({
    @Query("page") required int page,
    @Query("per_page") int perPage = Env.perPage,
    @Query("search") String? query,
  });

  @GET("/{id}")
  Future<BaseResponse<User>> findOne({@Path() required String id});

  @DELETE("/{id}")
  Future<BaseResponse<dynamic>> delete({@Path() required String id});
}