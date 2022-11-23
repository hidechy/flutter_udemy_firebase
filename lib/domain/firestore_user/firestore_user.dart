// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_user.freezed.dart';

part 'firestore_user.g.dart';

@freezed
class FirestoreUser with _$FirestoreUser {
  const factory FirestoreUser({
    required String userName,
    required String uid,
    required String email,
    required dynamic createdAt,
    required dynamic updatedAt,
  }) = _FirestoreUser;

  factory FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFromJson(json);
}
