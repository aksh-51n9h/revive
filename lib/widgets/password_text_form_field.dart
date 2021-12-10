import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:revive/inputs/inputs.dart';
import 'package:revive/pages/authentication_form_page/cubit/authentication_form_page_cubit.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationFormPageCubit,
        AuthenticationFormPageState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            BlocProvider.of<AuthenticationFormPageCubit>(context)
                .onPasswordInputChanged(value);
          },
          obscureText: state.obscureModeToggle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            hintText: "Password",
            fillColor: Colors.blueGrey.shade50.withOpacity(0.4),
            filled: true,
            suffixIcon: IconButton(
                onPressed: () {
                  BlocProvider.of<AuthenticationFormPageCubit>(context)
                      .onObscureModeToggle(!state.obscureModeToggle);
                },
                icon: const Icon(Icons.remove_red_eye)),
            errorText:
                state.passwordInput.error == PasswordInputError.short_length
                    ? "Min 8 characters required"
                    : null,
          ),
        );
      },
    );
  }
}
