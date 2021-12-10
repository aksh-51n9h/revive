import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:revive/app/app.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/pages/drawer_page/drawer_page.dart';
import 'package:revive/pages/map_page/map_page.dart';
import 'package:revive/widgets/search_app_bar.dart';

void main() {
  runApp(ReviveApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: const [
              MapPage(),
              SearchAppBar(),
            ],
          ),
          drawer: const DrawerPage(),
        );
      },
    );
  }
}
