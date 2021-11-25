import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/widgets/email_text_form_field.dart';
import 'package:revive/widgets/password_text_form_field.dart';
import 'package:revive/widgets/spacing.dart';

class AuthenticationFormPage extends StatefulWidget {
  const AuthenticationFormPage({Key? key}) : super(key: key);

  @override
  _AuthenticationFormPageState createState() => _AuthenticationFormPageState();
}

class _AuthenticationFormPageState extends State<AuthenticationFormPage> {
  late Tween<double> _gradientStopTween;

  @override
  void initState() {
    super.initState();

    _gradientStopTween = Tween(begin: 0.9, end: 0.49);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Scaffold(
          body: TweenAnimationBuilder<double>(
              tween: _gradientStopTween,
              duration: Duration(milliseconds: 400),
              curve: Curves.easeInCubic,
              builder: (context, val, _) {
                print(_gradientStopTween);
                return Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    gradient: LinearGradient(
                      colors: [Colors.blueGrey.shade100, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.2, val],
                    ),
                  ),
                  child: ListView(
                    children: [
                      PasswordTextFormField(),
                      Spacing(height: 12),
                      EmailTextFormField(),
                      Spacing(height: 12),
                      Text(
                        "Easy, fast and convinient way to track your charging stations and your travel routes.",
                        style: state.appTheme.textTheme.caption,
                      ),
                      Spacing(height: 12),
                      Text(
                        "Welcome!",
                        style: state.appTheme.textTheme.headline2!.copyWith(
                          color: state.appTheme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                    reverse: true,
                  ),
                );
              }),
          bottomNavigationBar: Container(
            color: Colors.white,
            padding: state.bottomNaviagationBarPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text(state.loginButtonText),
                  style: state.elevatedButtonStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(state.createAccountButtonText),
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
