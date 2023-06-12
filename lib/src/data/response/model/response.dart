import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BaseResponceModel {
  @JsonKey(name: 'status')
  int? statusCode;
  @JsonKey(name: 'message')
  String? message;
  BaseResponceModel(
    this.statusCode,
    this.message,
  );
}

@JsonSerializable()
class CustomerModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'netifications')
  int? notifications;

  CustomerModel(this.name, this.id);

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}

@JsonSerializable()
class ContactsModel {
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phoneNunmber')
  String? phoneNumber;
  ContactsModel(this.email, this.phoneNumber);

  factory ContactsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsModelToJson(this);
}

@JsonSerializable()
class AuthenticationModel extends BaseResponceModel {
  @JsonKey(name: 'customer')
  CustomerModel? customerModel;
  @JsonKey(name: 'constacts')
  ContactsModel? contactsModel;

  AuthenticationModel(
    super.statusCode,
    super.message,
    this.customerModel,
    this.contactsModel,
  );

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationModelToJson(this);
}
