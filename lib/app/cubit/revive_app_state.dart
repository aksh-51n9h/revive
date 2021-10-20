part of 'revive_app_cubit.dart';

class ReviveAppState extends Equatable {
  final String appTitle = "Revive App";
  final String loginButtonText = "LOGIN";
  final BorderRadius borderRadius = BorderRadius.circular(10);
  final EdgeInsets elevatedButtonPadding = EdgeInsets.all(12);
  late final Brightness brightness;
  late final ButtonStyle elevatedButtonStyle;
  late final ThemeData appTheme;

  ReviveAppState({required BuildContext context}) {
    ThemeData theme = Theme.of(context);

    this.appTheme = theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: Colors.deepPurple,
      ),
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
