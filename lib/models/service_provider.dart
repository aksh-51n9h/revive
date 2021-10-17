import 'package:revive/models/user.dart';

class ServiceProvider extends User {
  ServiceProvider({
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

  @override
  // TODO: implement ServiceProvider pros
  List<Object?> get props => super.props..addAll([]);
}
