part of 'revive_app_cubit.dart';

class ReviveAppState extends Equatable {
  final String appTitle = "Revive App";
  final String loginButtonText = "SIGN IN";
  final String createAccountButtonText = "CREATE ACCOUNT";
  final EdgeInsets bottomNaviagationBarPadding = EdgeInsets.all(12);
  final BorderRadius borderRadius = BorderRadius.circular(10);
  final EdgeInsets elevatedButtonPadding =
      EdgeInsets.symmetric(horizontal: 30, vertical: 12);
  late final Brightness brightness;
  late final ButtonStyle elevatedButtonStyle;
  late final ThemeData appTheme;

  ReviveAppState({required BuildContext context}) {
    ThemeData theme = Theme.of(context);

    this.appTheme = theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: Color.fromRGBO(45, 86, 216, 1),
      ),
      textTheme: GoogleFonts.sawarabiGothicTextTheme(theme.textTheme),
    );

    this.elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: elevatedButtonPadding,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );

    this.brightness = Brightness.light;
  }

  @override
  List<Object> get props => [
        elevatedButtonStyle,
        appTheme,
      ];
}
