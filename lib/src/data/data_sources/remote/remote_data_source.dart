import '../../request/request_model.dart';
import '../../response/model/response.dart';

abstract class RemoteDataSource {
  Future<AuthenticationModel> login(RequestModel model);
}
