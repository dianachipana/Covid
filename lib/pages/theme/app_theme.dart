import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //Colors for the light theme Color Scheme (dark theme will be specified later)
  static const Color _lightPrimaryColor = Color(0xff2a2798);
  static const Color _lightPrimaryVariantColor = Color(0xff4ECCA3);
  static const Color _lightSecondaryColor = Color(0xffF5A623);
  static const Color _lightSecondaryVariantColor = Color(0xff26BBF4);
  static const Color _lightSurfaceColor = Colors.white;
  static const Color _lightBackgroundColor = Color(0xffF4F4F9);
  static const Color _lightErrorColor = Colors.redAccent;
  static const Color _lightOnPrimaryColor = Color(0xff163A5F);
  static const Color _lightOnSecondaryColor = Color(0xff163A5F);
  static const Color _lightOnSurfaceColor = Color(0xff000030);
  static const Color _lightOnBackgroudColor = Color(0xff000030);
  static const Color _lightOnErrorColor = Colors.white;

  static const Color _lightDisabledColor = Color(0x33163A5F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightBackgroundColor,
    primaryColor: _lightPrimaryColor,
    disabledColor:
        _lightDisabledColor, //needs to be used explicitly in MaterialButton
    fontFamily: 'Muli',
    colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        secondaryVariant: _lightSecondaryVariantColor,
        surface: _lightSurfaceColor,
        background: _lightBackgroundColor,
        error: _lightErrorColor,
        onPrimary: _lightOnPrimaryColor,
        onSecondary: _lightOnSecondaryColor,
        onSurface: _lightOnSurfaceColor,
        onBackground: _lightOnBackgroudColor,
        onError: _lightOnErrorColor),
    textTheme: _lightTextTheme,
    appBarTheme: _lightAppBarTheme,
    buttonTheme: _lightButtonTheme,
    inputDecorationTheme: _lightInputDecorationTheme,
  );

  static final TextTheme _lightTextTheme = TextTheme(
    button: _lightButtonStyle,
    title: _lightTitleStyle,
    //  bigText: _lightBigTextStyle,
    subhead: _lightSubheadStyle,
    subtitle: _lightSubtitleStyle,
    bodyText2: _lightbodyText2Style,
    bodyText1: _lightbodyText1Style,
    caption: _lightCaptionStyle,
  );

  static final TextStyle _lightButtonStyle = TextStyle(
      fontSize: 17.0, fontWeight: FontWeight.w800, color: _lightOnPrimaryColor);
  static final TextStyle _lightBigTextStyle = TextStyle(
      fontSize: 26.0, fontWeight: FontWeight.w500, color: _lightOnPrimaryColor);
  static final TextStyle _lightTitleStyle = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w800, color: _lightOnPrimaryColor);
  static final TextStyle _lightSubheadStyle = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.w600, color: _lightOnSurfaceColor);
  static final TextStyle _lightSubtitleStyle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w600, color: _lightOnSurfaceColor);
  static final TextStyle _lightbodyText2Style = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w400, color: _lightOnSurfaceColor);
  static final TextStyle _lightbodyText1Style = TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w400, color: _lightOnSurfaceColor);
  static final TextStyle _lightCaptionStyle = TextStyle(
      fontSize: 12.0, fontWeight: FontWeight.w400, color: _lightOnSurfaceColor);

  static final AppBarTheme _lightAppBarTheme = AppBarTheme(
    color: _lightPrimaryColor,
    textTheme: TextTheme(
      title: _lightTextTheme.title.copyWith(
          fontFamily: 'Muli', color: Colors.white, letterSpacing: 0.35),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );

  static final ButtonThemeData _lightButtonTheme = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    padding: EdgeInsets.all(5.0),
    height: 45,
    minWidth: 230,
  );

  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
    hintStyle: _lightTextTheme.bodyText2.copyWith(color: Colors.grey),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 0.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      // width: 0.0 produces a thin "hairline" border
      borderSide: BorderSide(
        color: _lightPrimaryColor,
        width: 0.0,
      ),
    ),
    contentPadding: EdgeInsets.all(10.0),
  );
}
