import '../enum/http_status_code.dart';

extension HttpStatusCodeEx on HttpStatusCode {
  int get getStatusCode {
    switch (this) {
      case HttpStatusCode.SUCCESS:
        return 200;
      case HttpStatusCode.NOT_FOUND:
        return 404;
      case HttpStatusCode.PERMANENT_REDIRECTED:
        return 302;
      case HttpStatusCode.TEMPORARY_REDIRECTED:
        return 301;
      case HttpStatusCode.NOT_MODIFIED:
        return 304;
      case HttpStatusCode.BAD_REQUEST:
        return 400;
      case HttpStatusCode.UNAUTHORIZED_ERROR:
        return 401;
      case HttpStatusCode.FORBIDDEN:
        return 403;
      case HttpStatusCode.INTERNAL_SERVER_ERROR:
        return 500;
      case HttpStatusCode.NOT_IMPLEMENTED:
        return 501;
    }
  }

  String get getStatusMessage {
    switch (this) {
      case HttpStatusCode.SUCCESS:
        return 'Success';
      case HttpStatusCode.NOT_FOUND:
        return 'Not found';
      case HttpStatusCode.PERMANENT_REDIRECTED:
        return 'Permanent redirect';
      case HttpStatusCode.TEMPORARY_REDIRECTED:
        return 'Temporary redirect';
      case HttpStatusCode.NOT_MODIFIED:
        return 'Not modified';
      case HttpStatusCode.BAD_REQUEST:
        return 'Bad request';
      case HttpStatusCode.UNAUTHORIZED_ERROR:
        return 'Unauthorized error';
      case HttpStatusCode.FORBIDDEN:
        return 'forbidden';
      case HttpStatusCode.INTERNAL_SERVER_ERROR:
        return 'internal server error';
      case HttpStatusCode.NOT_IMPLEMENTED:
        return 'Not implemented';
    }
  }
}
