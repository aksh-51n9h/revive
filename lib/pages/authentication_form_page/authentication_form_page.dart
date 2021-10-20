import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';

class AuthenticationFormPage extends StatefulWidget {
  const AuthenticationFormPage({Key? key}) : super(key: key);

  @override
  _AuthenticationFormPageState createState() => _AuthenticationFormPageState();
}

class _AuthenticationFormPageState extends State<AuthenticationFormPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(state.loginButtonText),
                    style: state.elevatedButtonStyle,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
