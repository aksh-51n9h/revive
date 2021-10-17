import 'package:formz/formz.dart';

enum PasswordInputError { short_length, valid, invalid }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.dirty({required String value}) : super.dirty(value);
  const PasswordInput.pure() : super.pure("");

  @override
  PasswordInputError? validator(String value) {
    RegExp passwordLengthValidationRegExp = RegExp(r"[a-zA-Z0-9]{8,}$");

    if (!passwordLengthValidationRegExp.hasMatch(value))
      return PasswordInputError.short_length;

    RegExp passwordValidationRegExp =
        RegExp(r"(?=.*\d)(?=.*[a-zA-z])[a-zA-z0-9]{8,}$");

    return passwordValidationRegExp.hasMatch(value)
        ? PasswordInputError.valid
        : PasswordInputError.invalid;
  }
}
