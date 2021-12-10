import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/widgets/address_text_form_field.dart';
import 'package:revive/widgets/email_text_form_field.dart';
import 'package:revive/widgets/mobile_no_text_form_field.dart';
import 'package:revive/widgets/name_text_form_field.dart';
import 'package:revive/widgets/password_text_form_field.dart';
import 'package:revive/widgets/spacing.dart';

import '../../lib.dart';

class CreateAccountFormPage extends StatefulWidget {
  const CreateAccountFormPage({Key? key}) : super(key: key);

  @override
  _CreateAccountFormPageState createState() => _CreateAccountFormPageState();
}

class _CreateAccountFormPageState extends State<CreateAccountFormPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              gradient: LinearGradient(
                colors: [Colors.blueGrey.shade100, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.49],
              ),
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const MobileNoTextFormField(),
                const Spacing(vertical: 12),
                const AddressTextFormField(),
                const Spacing(vertical: 12),
                const PasswordTextFormField(),
                const Spacing(vertical: 12),
                const EmailTextFormField(),
                const Spacing(vertical: 12),
                const NameTextFormField(),
                const Spacing(vertical: 12),
                Text(
                  newAccountText,
                  style: state.appTheme.textTheme.headline2!.copyWith(
                    color: state.appTheme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              reverse: true,
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            padding: state.bottomNaviagationBarPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(signupButtonText),
                  style: state.elevatedButtonStyle,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(alreadyHaveAccountButtonText),
                  style: state.elevatedButtonStyle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
