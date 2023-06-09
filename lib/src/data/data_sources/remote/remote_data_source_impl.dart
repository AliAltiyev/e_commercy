import '../../network/api_service.dart';
import '../../request/request_model.dart';
import '../../response/model/response.dart';
import 'remote_data_source.dart';

class RemoteRepositoryImpl extends RemoteDataSource {
  final ApiService _service;

  RemoteRepositoryImpl({required ApiService service}) : _service = service;

  @override
  Future<AuthenticationModel> login(RequestModel model) async {
    return await _service.authenticate(
        emial: model.email,
        password: model.password,
        device_type: model.deviceType,
        id: model.id);
  }
}
