import 'package:e_commercy/src/data/response/model/response.dart';
import 'package:e_commercy/src/domain/entity/response.dart';
import 'package:e_commercy/src/util/extension/number.dart';
import 'package:e_commercy/src/util/extension/string.dart';

abstract class Mappers {
  static const _ZERO = 0;
  static const _EMPTY = '';

  static ContactsEntity contactToEntity(ContactsModel model) {
    return ContactsEntity(
        email: model.email.orEmpty() ?? _EMPTY,
        phoneNumber: model.phoneNumber.orEmpty() ?? _EMPTY);
  }

  static ContactsModel contactToModel(ContactsEntity contactsEntity) {
    return ContactsModel(contactsEntity.email, contactsEntity.phoneNumber);
  }

  //? Constacts model mapper
  static CustomerModel customerToModel(CustomerEntity model) {
    return CustomerModel(
        id: model.id, name: model.name, notifications: model.notifications);
  }

  static CustomerEntity customertToEntity(CustomerModel model) {
    return CustomerEntity(
        id: model.id.orZero() ?? _ZERO,
        name: model.name.orEmpty() ?? _EMPTY,
        notifications: model.notifications.orZero() ?? _ZERO);
  }

  static AuthenticationEntity authenticationToEntity(
      AuthenticationModel model) {
    return AuthenticationEntity(
        contactsEntity: contactToEntity(model.contactsModel!),
        customerEntity: customertToEntity(model.customerModel!));
  }

  static AuthenticationModel authenticationToModel(AuthenticationEntity model) {
    return AuthenticationModel(customerToModel(model.customerEntity!),
        contactToModel(model.contactsEntity!));
  }
}







// const _ZERO = 0;
// const _EMPTY = '';

// extension CustomerResponseMapper on CustomerModel? {
//   CustomerEntity toDomain() {
//     return CustomerEntity(
//         id: this?.id.orZero() ?? _ZERO,
//         name: this?.name?.orEmpty() ?? _EMPTY,
//         notifications: this?.notifications?.orZero() ?? _ZERO);
//   }
// }

// extension ContactResponseMapper on ContactsModel? {
//   ContactsEntity toDomain() {
//     return ContactsEntity(
//         email: this?.email.orEmpty() ?? _EMPTY,
//         phoneNumber: this?.phoneNumber.orEmpty() ?? _EMPTY);
//   }
// }

// extension AuthenticationResponseMapper on AuthenticationModel? {
//   AuthenticationEntity toDomain() {
//     return AuthenticationEntity(
//         contactsEntity: this?.contactsModel?.toDomain(),
//         customerEntity: this?.customerModel?.toDomain());
//   }
// }
