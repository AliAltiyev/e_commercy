import 'package:e_commercy/src/util/enum/locale_status_code.dart';

extension LocaleStatusCodeEx on LocaleStatusCode {
  int get getStatusCode {
    switch (this) {
      case LocaleStatusCode.UNKNOWN:
        return -1;
      case LocaleStatusCode.CACHE_ERROR:
        return -2;
      case LocaleStatusCode.CANCEL:
        return -3;
      case LocaleStatusCode.CENNECT_TIMEOUT:
        return -4;
      case LocaleStatusCode.NO_INTERNET_CONNECTION:
        return -5;
      case LocaleStatusCode.RECIVETIMEOUT:
        return -6;
      case LocaleStatusCode.SEND_TIMEOUT:
        return -7;
    }
  }
}
