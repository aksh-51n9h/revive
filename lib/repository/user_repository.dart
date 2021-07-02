import 'package:revive/models/user.dart';
import 'package:revive/repository/repository.dart';

class UserRepository implements FirebaseRepository<User> {
  @override
  Future<bool> addDocument(User object) {
    // TODO: implement addDocument
    throw UnimplementedError();
  }

  @override
  Future<User> getDocument(User object) {
    // TODO: implement getDocument
    throw UnimplementedError();
  }

  @override
  Future<void> removeDocument(User object) {
    // TODO: implement removeDocument
    throw UnimplementedError();
  }

  @override
  Future<void> updateDocument(User object) {
    // TODO: implement updateDocument
    throw UnimplementedError();
  }
}
