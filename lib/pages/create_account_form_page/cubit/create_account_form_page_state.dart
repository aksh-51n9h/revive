part of 'create_account_form_page_cubit.dart';

class CreateAccountFormPageState extends Equatable {
  final EmailInput emailInput;
  final PasswordInput passwordInput;
  final FormzStatus status;
  final bool obscureModeToggle;

  const CreateAccountFormPageState({
    this.emailInput = const EmailInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
    this.obscureModeToggle = true,
    this.status = FormzStatus.valid,
  });

  @override
  List<Object> get props =>
      [emailInput, passwordInput, status, obscureModeToggle];

  CreateAccountFormPageState copyWith({
    EmailInput? emailInput,
    PasswordInput? passwordInput,
    bool? obscureModeToggle,
  }) {
    return CreateAccountFormPageState(
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
      obscureModeToggle: obscureModeToggle ?? this.obscureModeToggle,
      status: Formz.validate(
          [emailInput ?? this.emailInput, passwordInput ?? this.passwordInput]),
    );
  }
}
