import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/lib.dart';
import 'package:revive/pages/charging_station_info_page/charging_station_info_page.dart';
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
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInCubic,
              builder: (context, val, _) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
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
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const PasswordTextFormField(),
                      const Spacing(vertical: 12),
                      const EmailTextFormField(),
                      const Spacing(vertical: 12),
                      Text(
                        "Easy, fast and convinient way to track your charging stations and your travel routes.",
                        style: state.appTheme.textTheme.caption,
                      ),
                      const Spacing(vertical: 12),
                      Text(
                        welcomeText,
                        style: state.appTheme.textTheme.headline2!.copyWith(
                          color: state.appTheme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                            "assets/images/welcome_screen_car_image.png"),
                      ),
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
                  child: const Text(loginButtonText),
                  style: state.elevatedButtonStyle,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/create_account");
                  },
                  child: const Text(createAccountButtonText),
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
