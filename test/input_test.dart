import 'package:flutter_test/flutter_test.dart';
import 'package:revive/inputs/inputs.dart';
import 'package:revive/inputs/name_input.dart';

void main() {
  test("Email Input Test", () {
    EmailInput emailInput = const EmailInput.pure();

    expect(emailInput.validator("akshay2104.singh@gmail.com"), null);
  });

  test("Password Input Test", () {
    PasswordInput passwordInput = const PasswordInput.pure();

    expect(passwordInput.validator("123456897"), PasswordInputError.invalid);
  });

  test("Name Input Test", () {
    NameInput nameInput = const NameInput.pure();

    expect(nameInput.validator("akshay."), NameInputError.invalid);
    expect(nameInput.validator("Adkjd."), NameInputError.invalid);
    expect(nameInput.validator("Akshay Singh"), NameInputError.valid);
    expect(nameInput.validator(""), NameInputError.empty);
  });
}
