import 'package:equatable/equatable.dart';

class User extends Equatable {
  ///[User] class properties
  final String uid;
  final String name;
  final String emailAddress;
  final String displayImageUrl;

  ///[User] constructor
  User({
    required this.uid,
    required this.name,
    required this.emailAddress,
    required this.displayImageUrl,
  });

  User copyWith({
    String? uid,
    String? name,
    String? emailAddress,
    String? displayImageUrl,
  }) {
    return User(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      displayImageUrl: displayImageUrl ?? this.displayImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'emailAddress': emailAddress,
      'displayImageUrl': displayImageUrl,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      name: map['name'],
      emailAddress: map['emailAddress'],
      displayImageUrl: map['displayImageUrl'],
    );
  }

  @override
  String toString() {
    return 'User(uid: $uid, name: $name, emailAddress: $emailAddress, displayImageUrl: $displayImageUrl)';
  }

  @override
  List<Object?> get props => [uid, name, emailAddress, displayImageUrl];
}
