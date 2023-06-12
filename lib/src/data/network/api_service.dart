import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../util/constants/string.dart';
import '../response/model/response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('/customer/login')
  Future<AuthenticationModel> authenticate();
}
