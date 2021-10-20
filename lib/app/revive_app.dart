import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/pages/authentication_form_page/authentication_form_page.dart';

class ReviveApp extends StatelessWidget {
  const ReviveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ReviveAppCubit>(
          create: (context) => ReviveAppCubit(context: context),
        ),
      ],
      child: _ReviveApp(),
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
          title: state.appTitle,
          theme: state.appTheme,
          home: Scaffold(
            appBar: AppBar(
              title: Text(state.appTitle),
            ),
            body: AuthenticationFormPage(),
          ),
        );
      },
    );
  }
}
