// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirestoreUser _$$_FirestoreUserFromJson(Map<String, dynamic> json) =>
    _$_FirestoreUser(
      userName: json['userName'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$_FirestoreUserToJson(_$_FirestoreUser instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'uid': instance.uid,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
