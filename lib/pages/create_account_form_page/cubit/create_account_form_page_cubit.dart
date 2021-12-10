import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:revive/inputs/inputs.dart';

part 'create_account_form_page_state.dart';

class CreateAccountFormPageCubit extends Cubit<CreateAccountFormPageState> {
  CreateAccountFormPageCubit() : super(const CreateAccountFormPageState());
}
