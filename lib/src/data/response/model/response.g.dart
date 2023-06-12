// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponceModel _$BaseResponceModelFromJson(Map<String, dynamic> json) =>
    BaseResponceModel(
      json['status'] as int?,
      json['message'] as String?,
    );

Map<String, dynamic> _$BaseResponceModelToJson(BaseResponceModel instance) =>
    <String, dynamic>{
      'status': instance.statusCode,
      'message': instance.message,
    };

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      json['name'] as String?,
      json['id'] as int?,
    )..notifications = json['netifications'] as int?;

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'netifications': instance.notifications,
    };

ContactsModel _$ContactsModelFromJson(Map<String, dynamic> json) =>
    ContactsModel(
      json['email'] as String?,
      json['phoneNunmber'] as String?,
    );

Map<String, dynamic> _$ContactsModelToJson(ContactsModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNunmber': instance.phoneNumber,
    };

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) =>
    AuthenticationModel(
      json['status'] as int?,
      json['message'] as String?,
      json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      json['constacts'] == null
          ? null
          : ContactsModel.fromJson(json['constacts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationModelToJson(
        AuthenticationModel instance) =>
    <String, dynamic>{
      'status': instance.statusCode,
      'message': instance.message,
      'customer': instance.customerModel,
      'constacts': instance.contactsModel,
    };
