// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firestore_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreUser _$FirestoreUserFromJson(Map<String, dynamic> json) {
  return _FirestoreUser.fromJson(json);
}

/// @nodoc
mixin _$FirestoreUser {
  String get userName => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreUserCopyWith<FirestoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserCopyWith<$Res> {
  factory $FirestoreUserCopyWith(
          FirestoreUser value, $Res Function(FirestoreUser) then) =
      _$FirestoreUserCopyWithImpl<$Res, FirestoreUser>;
  @useResult
  $Res call(
      {String userName,
      String uid,
      String email,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class _$FirestoreUserCopyWithImpl<$Res, $Val extends FirestoreUser>
    implements $FirestoreUserCopyWith<$Res> {
  _$FirestoreUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? uid = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirestoreUserCopyWith<$Res>
    implements $FirestoreUserCopyWith<$Res> {
  factory _$$_FirestoreUserCopyWith(
          _$_FirestoreUser value, $Res Function(_$_FirestoreUser) then) =
      __$$_FirestoreUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String uid,
      String email,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class __$$_FirestoreUserCopyWithImpl<$Res>
    extends _$FirestoreUserCopyWithImpl<$Res, _$_FirestoreUser>
    implements _$$_FirestoreUserCopyWith<$Res> {
  __$$_FirestoreUserCopyWithImpl(
      _$_FirestoreUser _value, $Res Function(_$_FirestoreUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? uid = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_FirestoreUser(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirestoreUser implements _FirestoreUser {
  const _$_FirestoreUser(
      {required this.userName,
      required this.uid,
      required this.email,
      required this.createdAt,
      required this.updatedAt});

  factory _$_FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$$_FirestoreUserFromJson(json);

  @override
  final String userName;
  @override
  final String uid;
  @override
  final String email;
  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'FirestoreUser(userName: $userName, uid: $uid, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreUser &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      uid,
      email,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirestoreUserCopyWith<_$_FirestoreUser> get copyWith =>
      __$$_FirestoreUserCopyWithImpl<_$_FirestoreUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirestoreUserToJson(
      this,
    );
  }
}

abstract class _FirestoreUser implements FirestoreUser {
  const factory _FirestoreUser(
      {required final String userName,
      required final String uid,
      required final String email,
      required final dynamic createdAt,
      required final dynamic updatedAt}) = _$_FirestoreUser;

  factory _FirestoreUser.fromJson(Map<String, dynamic> json) =
      _$_FirestoreUser.fromJson;

  @override
  String get userName;
  @override
  String get uid;
  @override
  String get email;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FirestoreUserCopyWith<_$_FirestoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}
