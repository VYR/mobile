import "dart:convert";
import "package:flutter/widgets.dart";

class LoginModel {
  const LoginModel({
      this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.user,
  });
  
  factory LoginModel.fromMap(Map<String, dynamic> map) => LoginModel(
      accessToken: map["access_token"],
      tokenType: map["token_type"],
      expiresIn: map["expires_in"],
      user: map["user"] == null ? null : User.fromMap(map["user"]),
  );
  
  factory LoginModel.fromJson(String str) => LoginModel.fromMap(json.decode(str));
  
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final User? user;
  
  @override
  int get hashCode => hashValues(accessToken, tokenType, expiresIn, user);
  
  Map<String, dynamic> toMap() => {
      "access_token": accessToken,
      "token_type": tokenType,
      "expires_in": expiresIn,
      "user": user?.toMap(),
  };
  
  String toJson() => json.encode(toMap());
  
  LoginModel copyWith({
      String? accessToken,
      String? tokenType,
      int? expiresIn,
      User? user,
  }) => LoginModel(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      user: user ?? this.user,
  );
  
  @override
  String toString() => "LoginModel(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, user: $user)";
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is LoginModel &&
        other.accessToken == accessToken &&
        other.tokenType == tokenType &&
        other.expiresIn == expiresIn &&
        other.user == user;
  }
}

class User {
  const User({
      this.id,
      this.userName,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
  });
  
  factory User.fromMap(Map<String, dynamic> map) => User(
      id: map["id"],
      userName: map["userName"],
      email: map["email"],
      emailVerifiedAt: map["email_verified_at"],
      createdAt: map["created_at"],
      updatedAt: map["updated_at"],
  );
  
  factory User.fromJson(String str) => User.fromMap(json.decode(str));
  
  final int? id;
  final String? userName;
  final String? email;
  final dynamic emailVerifiedAt;
  final String? createdAt;
  final String? updatedAt;
  
  @override
  int get hashCode => hashValues(id, userName, email, emailVerifiedAt, createdAt, updatedAt);
  
  Map<String, dynamic> toMap() => {
      "id": id,
      "userName": userName,
      "email": email,
      "email_verified_at": emailVerifiedAt,
      "created_at": createdAt,
      "updated_at": updatedAt,
  };
  
  String toJson() => json.encode(toMap());
  
  User copyWith({
      int? id,
      String? userName,
      String? email,
      dynamic? emailVerifiedAt,
      String? createdAt,
      String? updatedAt,
  }) => User(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
  );
  
  @override
  String toString() => "User(id: $id, userName: $userName, email: $email, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt)";
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is User &&
        other.id == id &&
        other.userName == userName &&
        other.email == email &&
        other.emailVerifiedAt == emailVerifiedAt &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}

