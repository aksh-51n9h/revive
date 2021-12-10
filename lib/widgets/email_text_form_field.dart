import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/inputs/email_input.dart';
import 'package:revive/pages/authentication_form_page/cubit/authentication_form_page_cubit.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationFormPageCubit,
        AuthenticationFormPageState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            BlocProvider.of<AuthenticationFormPageCubit>(context)
                .onEmailInputChanged(value);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            errorText: state.emailInput.error == EmailInputError.invalid
                ? "Invalid"
                : null,
            hintText: "Email address",
            fillColor: Colors.blueGrey.shade50.withOpacity(0.4),
            filled: true,
          ),
        );
      },
    );
  }
}
