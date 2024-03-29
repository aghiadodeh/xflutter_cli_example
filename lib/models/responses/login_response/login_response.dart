/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data_models.dart';
part 'login_response.freezed.dart';
part 'login_response.g.dart';

// ----------(json)----------
/*
{
  "user": {
    "createdAt": "2022-06-13T15:03:24.653Z",
    "name": "Aghiad Odeh",
    "avatar": "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "country": "Greece",
    "city": "Sanford",
    "company": "Bespoke Plastic Table",
    "id": "1"
  },
  "token": "dcc36aa219448f4825673dfaeca75514dff81c0570ff9c66390d697d0a089aa3"
} 
*/
// --------------------------

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    User? user,
    String? token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
