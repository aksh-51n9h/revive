import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/constants.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/lib.dart';
import 'package:revive/pages/authentication_form_page/cubit/authentication_form_page_cubit.dart';
import 'package:revive/pages/authentication_form_page/authentication_form_page.dart';
import 'package:revive/pages/create_account_form_page/create_account_form_page.dart';

class ReviveApp extends StatelessWidget {
  const ReviveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ReviveAppCubit>(
          create: (context) => ReviveAppCubit(context: context),
        ),
        BlocProvider<AuthenticationFormPageCubit>(
          create: (context) => AuthenticationFormPageCubit(),
        ),
      ],
      child: const _ReviveApp(),
    );
  }
}

class _ReviveApp extends StatelessWidget {
  const _ReviveApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return MaterialApp(
          title: appTitle,
          theme: state.appTheme,
          routes: {
            "/home": (_) => const MyApp(),
            "/create_account": (_) => const CreateAccountFormPage(),
          },
          home: const Scaffold(
            body: AuthenticationFormPage(),
          ),
        );
      },
    );
  }
}
