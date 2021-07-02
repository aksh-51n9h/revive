abstract class FirebaseRepository<T> {
  Future<bool> addDocument(T object);
  Future<void> removeDocument(T object);
  Future<void> updateDocument(T object);
  Future<T> getDocument(T object);
}
