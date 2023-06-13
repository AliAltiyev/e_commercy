import '../../request/request_model.dart';
import '../../response/model/response.dart';

abstract class RemoteRepository {
  Future<AuthenticationModel> login(RequestModel model);
}
