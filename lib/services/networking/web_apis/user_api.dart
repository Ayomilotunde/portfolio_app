import 'dart:convert';


import '../../api_endpoints.dart';
import '../network_helper.dart';

class UserApi {
  static Future<dynamic> loginUser({
    required String email,
    required String password,
  }) async {
    final responseData = await NetworkHelper.postRequest(
      url: BaseUrl.getBaseUrl + EndpointDirectory.loginEndpoint,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        <String, String>{
          'email': email,
          'password': password,
        },
      ),
    );
    return responseData;
  }



}
