import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BaseResponceModel {
  @JsonKey(defaultValue: 'status')
  int? statusCode;
  @JsonKey(defaultValue: 'message')
  String? message;
  BaseResponceModel({
    this.statusCode,
    this.message,
  });
}

@JsonSerializable()
class CustomerModel {
  @JsonKey(defaultValue: 'name')
  String? name;
  @JsonKey(defaultValue: 'id')
  int? id;
  @JsonKey(defaultValue: 'netifications')
  int? notifications;

  CustomerModel({required this.name, required this.id});

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}

@JsonSerializable()
class ContactsModel {
  @JsonKey(defaultValue: 'email')
  String? email;
  @JsonKey(defaultValue: 'phoneNunmber')
  String? phoneNumber;
  ContactsModel({required this.email, required this.phoneNumber});

  factory ContactsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsModelToJson(this);
}

@JsonSerializable()
class AuthenticationModel extends BaseResponceModel {
  @JsonKey(defaultValue: 'customer')
  CustomerModel? customerModel;
  @JsonKey(defaultValue: 'constacts')
  ContactsModel? contactsModel;

  AuthenticationModel({
    required this.customerModel,
    required this.contactsModel,
  });

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationModelToJson(this);
}
