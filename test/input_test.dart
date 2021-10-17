import 'package:flutter_test/flutter_test.dart';
import 'package:revive/inputs/inputs.dart';

void main() {
  test("Email Input Test", () {
    EmailInput emailInput = new EmailInput.pure();

    expect(emailInput.validator("akshay2104.singh@gmail.com"),
        EmailInputError.valid);
  });

  test("Password Input Test", () {
    PasswordInput passwordInput = new PasswordInput.pure();

    expect(passwordInput.validator("junkjunk"), PasswordInputError.invalid);
  });
}
