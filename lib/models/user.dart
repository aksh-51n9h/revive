import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:revive/models/entity.dart';

class User implements Entity<User> {
  ///[User] class properties
  final String uid;
  final String name;
  final String emailAddress;

  //Constructor
  User({
    required this.uid,
    required this.name,
    required this.emailAddress,
  });

  ///Convert User object to json.
  ///returns [Map<String, Object?>]
  Map<String, Object?> toJson() {
    return {
      'uid': uid,
      'name': name,
      'emailAddress': emailAddress,
    };
  }

  ///Factory method to create an empty [User]
  factory User.empty() {
    return User(uid: "", name: "", emailAddress: "");
  }

  ///Factory method to convert [DocumentSnapshot] to [User] object.
  factory User.fromSnapshot(DocumentSnapshot snapshot) {
    ///store [snapshot.data()] object as [Map<String, Object?>]
    Map<String, Object?> data = snapshot.data() as Map<String, Object?>;

    return User(
      ///First check [data] contains key, if [true] then set the value to correspoing parameter
      uid: data.containsKey('uid') ? data['uid'] as String : "",
      name: data.containsKey('name') ? data['uid'] as String : "",
      emailAddress:
          data.containsKey('emailAddress') ? data['uid'] as String : "",
    );
  }
}
