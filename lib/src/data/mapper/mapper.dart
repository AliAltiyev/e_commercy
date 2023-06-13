import '../../domain/entity/response.dart';
import '../../util/extension/number.dart';
import '../../util/extension/string.dart';
import '../response/model/response.dart';

const _ZERO = 0;
const _EMPTY = '';

extension CustomerResponseMapper on CustomerModel? {
  CustomerEntity toDomain() {
    return CustomerEntity(
        id: this?.id.orZero() ?? _ZERO,
        name: this?.name?.orEmpty() ?? _EMPTY,
        notifications: this?.notifications?.orZero() ?? _ZERO);
  }
}

extension ContactResponseMapper on ContactsModel? {
  ContactsEntity toDomain() {
    return ContactsEntity(
        email: this?.email.orEmpty() ?? _EMPTY,
        phoneNumber: this?.phoneNumber.orEmpty() ?? _EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationModel? {
  AuthenticationEntity toDomain() {
    return AuthenticationEntity(
        contactsEntity: this?.contactsModel?.toDomain(),
        customerEntity: this?.customerModel?.toDomain());
  }
}
