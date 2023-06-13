import 'package:equatable/equatable.dart';

class BaseResponseEntity extends Equatable {
  final int statusCode;
  final String message;

  BaseResponseEntity(this.statusCode, this.message);

  @override
  List<Object?> get props => [statusCode, message];
}

class CustomerEntity extends Equatable {
  final String name;
  final int id;
  final int notifications;

  CustomerEntity(
      {required this.name, required this.id, required this.notifications});

  @override
  List<Object?> get props => [name, id, notifications];
}

class ContactsEntity extends Equatable {
  final String email;
  final String phoneNumber;
  ContactsEntity({
    required this.email,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [email, phoneNumber];
}

class AuthenticationEntity extends Equatable {
  final CustomerEntity? customerEntity;
  final ContactsEntity? contactsEntity;
  AuthenticationEntity({
    required this.customerEntity,
    required this.contactsEntity,
  });

  @override
  List<Object?> get props => [customerEntity, contactsEntity];
}
