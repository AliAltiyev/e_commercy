import 'package:dartz/dartz.dart';
import 'package:e_commercy/src/base/failure.dart';
import 'package:e_commercy/src/data/data_sources/remote/connection/connection.dart';
import 'package:e_commercy/src/data/data_sources/remote/remote_data_source.dart';
import 'package:e_commercy/src/data/mapper/mapper.dart';
import 'package:e_commercy/src/data/request/request_model.dart';
import 'package:e_commercy/src/domain/entity/response.dart';
import 'package:e_commercy/src/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;
  Connection _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, AuthenticationEntity>> login(
      RequestModel loginRequest) async {
    if (await _networkInfo.isConnected()) {
      final response = await _remoteDataSource.login(loginRequest);

      if (response.statusCode == 0) // success
      {
        return Right(Mappers.authenticationToEntity(response));
      } else {
        return Left(Failure(
            message:
                response.message ?? "we have biz error logic from API side",
            errorCode: 409));
      }
    } else {
      return Left(Failure(
          message: "please check your internet connection", errorCode: 501));
    }
  }
}
