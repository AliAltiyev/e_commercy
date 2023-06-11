// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponceModel _$BaseResponceModelFromJson(Map<String, dynamic> json) =>
    BaseResponceModel(
      statusCode: json['statusCode'] ?? 'status',
      message: json['message'] as String? ?? 'message',
    );

Map<String, dynamic> _$BaseResponceModelToJson(BaseResponceModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      name: json['name'] as String? ?? 'name',
      id: json['id'] ?? 'id',
    )..notifications = json['notifications'] ?? 'netifications';

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'notifications': instance.notifications,
    };

ContactsModel _$ContactsModelFromJson(Map<String, dynamic> json) =>
    ContactsModel(
      email: json['email'] as String? ?? 'email',
      phoneNumber: json['phoneNumber'] as String? ?? 'phoneNunmber',
    );

Map<String, dynamic> _$ContactsModelToJson(ContactsModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) =>
    AuthenticationModel(
      customerModel: json['customerModel'] ??
          CustomerModel.fromJson(json['customerModel'] as Map<String, dynamic>),
      contactsModel: json['contactsModel'] ??
          ContactsModel.fromJson(json['contactsModel'] as Map<String, dynamic>),
    )
      ..statusCode = json['statusCode'] ?? 'status'
      ..message = json['message'] as String? ?? 'message';

Map<String, dynamic> _$AuthenticationModelToJson(
        AuthenticationModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'customerModel': instance.customerModel,
      'contactsModel': instance.contactsModel,
    };
