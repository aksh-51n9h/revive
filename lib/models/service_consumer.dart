import 'package:revive/models/models.dart';

class ServiceConsumer extends User {
  ServiceConsumer({
    required String uid,
    required String name,
    required String displayImageUrl,
    required String emailAddress,
  }) : super(
          uid: uid,
          name: name,
          displayImageUrl: displayImageUrl,
          emailAddress: emailAddress,
        );
}
