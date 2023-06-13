import 'package:connectivity_plus/connectivity_plus.dart';

import 'connection.dart';

final class ConnectionImpl implements Connection {
  final Connectivity _connectivity;

  ConnectionImpl({required Connectivity connectivity})
      : _connectivity = connectivity;

  @override
  Future<ConnectivityResult> isConnected() async {
    return _connectivity.checkConnectivity();
  }
}
