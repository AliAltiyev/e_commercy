import 'package:flutter/material.dart';

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
}

enum Fruit {
  apple,
  orange,
  banana,
}

extension FruitExt on Fruit {
  Color get color {
    switch (this) {
      case Fruit.apple:
        return Colors.red;
      case Fruit.orange:
        return Colors.orange;
      case Fruit.banana:
        return Colors.yellow;
    }
  }
}
