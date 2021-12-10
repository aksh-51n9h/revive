import 'package:formz/formz.dart';

enum NameInputError { empty, valid, invalid }

class NameInput extends FormzInput<String, NameInputError> {
  const NameInput.pure() : super.pure("");
  const NameInput.dirty({required String value}) : super.dirty(value);

  @override
  NameInputError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }

    RegExp emailValidationRegExp = RegExp(r"^[a-zA-Z0-9 ]+$");

    return emailValidationRegExp.hasMatch(value)
        ? null
        : NameInputError.invalid;
  }
}
