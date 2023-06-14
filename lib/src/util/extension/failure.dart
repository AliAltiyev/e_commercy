import 'package:e_commercy/src/util/enum/http_status_code.dart';
import 'package:e_commercy/src/util/extension/http_status_code.dart';

import '../../base/failure.dart';

extension FailureEx on HttpStatusCode {
  Failure get getFailure {
    switch (this) {
      case HttpStatusCode.BAD_REQUEST:
        return Failure(
            errorCode: HttpStatusCode.BAD_REQUEST.getStatusCode,
            message: HttpStatusCode.BAD_REQUEST.getStatusMessage);
      case HttpStatusCode.FORBIDDEN:
        return Failure(
            errorCode: HttpStatusCode.FORBIDDEN.getStatusCode,
            message: HttpStatusCode.FORBIDDEN.getStatusMessage);
      case HttpStatusCode.INTERNAL_SERVER_ERROR:
        return Failure(
            errorCode: HttpStatusCode.INTERNAL_SERVER_ERROR.getStatusCode,
            message: HttpStatusCode.INTERNAL_SERVER_ERROR.getStatusMessage);
      case HttpStatusCode.NOT_FOUND:
        return Failure(
            errorCode: HttpStatusCode.NOT_FOUND.getStatusCode,
            message: HttpStatusCode.NOT_FOUND.getStatusMessage);
      case HttpStatusCode.NOT_IMPLEMENTED:
        return Failure(
            errorCode: HttpStatusCode.NOT_IMPLEMENTED.getStatusCode,
            message: HttpStatusCode.NOT_IMPLEMENTED.getStatusMessage);
      case HttpStatusCode.NOT_MODIFIED:
        return Failure(
            errorCode: HttpStatusCode.NOT_MODIFIED.getStatusCode,
            message: HttpStatusCode.NOT_MODIFIED.getStatusMessage);
      case HttpStatusCode.PERMANENT_REDIRECTED:
        return Failure(
            errorCode: HttpStatusCode.PERMANENT_REDIRECTED.getStatusCode,
            message: HttpStatusCode.PERMANENT_REDIRECTED.getStatusMessage);
      case HttpStatusCode.SUCCESS:
        return Failure(
            errorCode: HttpStatusCode.SUCCESS.getStatusCode,
            message: HttpStatusCode.SUCCESS.getStatusMessage);
      case HttpStatusCode.TEMPORARY_REDIRECTED:
        return Failure(
            errorCode: HttpStatusCode.TEMPORARY_REDIRECTED.getStatusCode,
            message: HttpStatusCode.TEMPORARY_REDIRECTED.getStatusMessage);
      case HttpStatusCode.UNAUTHORIZED_ERROR:
        return Failure(
            errorCode: HttpStatusCode.UNAUTHORIZED_ERROR.getStatusCode,
            message: HttpStatusCode.UNAUTHORIZED_ERROR.getStatusMessage);
    }
  }
}
