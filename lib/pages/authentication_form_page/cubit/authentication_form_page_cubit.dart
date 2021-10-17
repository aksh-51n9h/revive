import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:revive/inputs/email_input.dart';
import 'package:revive/inputs/inputs.dart';

part 'authentication_form_page_state.dart';

class AuthenticationFormPageCubit extends Cubit<AuthenticationFormPageState> {
  AuthenticationFormPageCubit() : super(AuthenticationFormPageState());

  void onEmailInputChanged(String value) {
    emit(state.copyWith(
      emailInput: EmailInput.dirty(value: value),
    ));
  }

  void onPasswordInputChanged(String value) {
    emit(state.copyWith(
      passwordInput: PasswordInput.dirty(value: value),
    ));
  }

  bool isFormValid() {
    return state.status == FormzStatus.valid;
  }
}
