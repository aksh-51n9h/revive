abstract class FirebaseRepository<T> {
  Future<bool> addDocumemt(T object);
  Future<T> getDocument(T object);
  Future<void> removeDocument(T object);
  Future<void> updateDocument(T object);
}
