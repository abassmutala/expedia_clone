import 'package:flutter/material.dart';

import 'app_colours.dart';

final ThemeData expediaLightTheme = _expediaLightTheme();

ThemeData _expediaLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _expediaLightTextTheme(base.textTheme),
    scaffoldBackgroundColor: kExpediaLightBackground,
    appBarTheme: base.appBarTheme.copyWith(
      color: kExpediaLightBackground,
      iconTheme: const IconThemeData(color: kExpediaOnLightSurface),
      foregroundColor: kExpediaOnLightSurface,
    ),
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: base.colorScheme.primary.withOpacity(0.25)),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelStyle: base.textTheme.bodyText1!.copyWith(fontFamily: 'Gilroy'),
      labelColor: base.textTheme.bodyText1!.color,
      unselectedLabelColor: base.textTheme.bodyText1!.color!.withOpacity(0.7),
      // unselectedLabelStyle: base.textTheme.bodyText1!.copyWith(
      //   fontFamily: 'Gilroy',
      //   color: kExpediaDisabledFlatButton,
      // ),
    ),
    sliderTheme: base.sliderTheme.copyWith(
      trackHeight: 1.0,
      thumbColor: kExpediaPrimary,
      activeTrackColor: kExpediaPrimary,
    ),
    iconTheme: base.iconTheme.copyWith(color: kExpediaOnLightSurface),
    toggleableActiveColor: kExpediaLightAccent,
    cardTheme: base.cardTheme.copyWith(color: kExpediaLightBackground),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: kExpediaLightBackground,
      selectedIconTheme: base.iconTheme.copyWith(color: kExpediaPrimary),
      unselectedItemColor: kExpediaOnLightSurface,
      selectedLabelStyle: _expediaLightTextTheme(base.textTheme).caption!.copyWith(fontWeight: FontWeight.w700)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: kExpediaLightBackground),
    // bottomSheetTheme: base.bottomSheetTheme.copyWith(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.only(
    //       topLeft: Corners.medRadius,
    //       topRight: Corners.medRadius,
    //     ),
    //   ),
    // ),
    // splashColor: kExpediaLightSplashColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: _expediaLightColorScheme,
  );
}

TextTheme _expediaLightTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline3: base.headline3!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 35.0,
          // fontWeight: FontWeight.w400,
          // letterSpacing: 0.25,
        ),
        headline4: base.headline4!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 35.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        headline5: base.headline5!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 24.0,
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 20.0,
          // fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        subtitle1: base.subtitle1!.copyWith(
          fontFamily: 'Gilroy',
          fontSize: 17.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        subtitle2: base.subtitle2!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 14.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        bodyText2: base.bodyText1!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.25,
          color: kExpediaLightBackground
        ),
        button: base.button!.copyWith(
          fontFamily: 'Gilroy',
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
        ),
        caption: base.caption!.copyWith(
          fontFamily: 'Gilroy',
          // fontSize: 13.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        ),
      )
      .apply(bodyColor: kExpediaOnLightSurface);
}

ColorScheme _expediaLightColorScheme = const ColorScheme.light().copyWith(
  primary: kExpediaPrimary,
  // primaryVariant: kExpediaPrimaryVariant,
  secondary: kExpediaLightAccent,
  surface: kExpediaLightBackground,
  // error: kExpediaError,
  onError: kExpediaOnLightSurface,
);
