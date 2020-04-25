import 'package:http/http.dart' as http;
import '../utils/constant.dart';
import '../model/login.dart';

class ServiceHandler {
  final String _baseUrl = 'http://contractorplus.dev.ganniti.com/api/';
  final Map<String, String> headers = {
    'x-api-key': kxApiKey,
    'Content-Type': 'application/x-www-form-urlencoded'
  };

  Future<Login> getLoginDataWith({String email, String password}) async {
    final response = await http.post(_baseUrl + 'login',
        headers: headers, body: {'email_address': email, 'password': password});
    return loginFromJson(response.body);
  }
}
