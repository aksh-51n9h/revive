part of 'authentication_form_page_cubit.dart';

class AuthenticationFormPageState extends Equatable {
  final EmailInput emailInput;
  final PasswordInput passwordInput;
  final FormzStatus status;

  AuthenticationFormPageState({
    this.emailInput = const EmailInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
    this.status = FormzStatus.valid,
  });

  @override
  List<Object> get props => [emailInput, passwordInput, status];

  AuthenticationFormPageState copyWith({
    EmailInput? emailInput,
    PasswordInput? passwordInput,
  }) {
    return AuthenticationFormPageState(
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
      status: Formz.validate(
          [emailInput ?? this.emailInput, passwordInput ?? this.passwordInput]),
    );
  }
}
