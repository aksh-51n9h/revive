import 'package:formz/formz.dart';

enum AddressInputError { empty, valid, invalid }

class AddressInput extends FormzInput<String, AddressInputError> {
  const AddressInput.pure() : super.pure("");
  const AddressInput.dirty({required String value}) : super.dirty(value);

  @override
  AddressInputError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }

    RegExp emailValidationRegExp = RegExp(r"^[a-zA-Z0-9 ]+$");

    return emailValidationRegExp.hasMatch(value)
        ? null
        : AddressInputError.invalid;
  }
}
