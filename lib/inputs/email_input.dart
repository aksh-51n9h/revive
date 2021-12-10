import 'package:formz/formz.dart';

enum EmailInputError { invalid }

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure("");
  const EmailInput.dirty({required String value}) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }

    RegExp emailValidationRegExp =
        RegExp(r"^[a-zA-Z0-9+_.-]+@(gmail|yahoo|outlook).com$");

    return emailValidationRegExp.hasMatch(value)
        ? null
        : EmailInputError.invalid;
  }
}
