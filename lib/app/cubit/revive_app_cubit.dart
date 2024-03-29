import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'revive_app_state.dart';

class ReviveAppCubit extends Cubit<ReviveAppState> {
  ReviveAppCubit({required BuildContext context})
      : super(ReviveAppState(context: context));
}
