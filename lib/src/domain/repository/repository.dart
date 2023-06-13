import 'package:dartz/dartz.dart';
import 'package:e_commercy/src/base/failure.dart';
import 'package:e_commercy/src/data/request/request_model.dart';
import 'package:e_commercy/src/domain/entity/response.dart';

abstract class Repository {
  //? Login request
  Future<Either<Failure, AuthenticationEntity>> login(
      RequestModel requestModel);
}
