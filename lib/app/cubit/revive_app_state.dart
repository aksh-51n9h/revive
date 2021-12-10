part of 'revive_app_cubit.dart';

class ReviveAppState extends Equatable {
  final EdgeInsets bottomNaviagationBarPadding = const EdgeInsets.all(12);
  final BorderRadius borderRadius = BorderRadius.circular(10);
  final EdgeInsets elevatedButtonPadding =
      const EdgeInsets.symmetric(horizontal: 30, vertical: 12);
  late final Brightness brightness;
  late final ButtonStyle elevatedButtonStyle;
  late final ThemeData appTheme;

  ReviveAppState({required BuildContext context}) {
    ThemeData theme = Theme.of(context);

    appTheme = theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: const Color.fromRGBO(45, 86, 216, 1),
      ),
      textTheme: GoogleFonts.sawarabiGothicTextTheme(theme.textTheme),
    );

    elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: elevatedButtonPadding,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );

    brightness = Brightness.light;
  }

  @override
  List<Object> get props => [
        elevatedButtonStyle,
        appTheme,
      ];
}
