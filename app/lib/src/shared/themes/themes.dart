import 'package:flutter/material.dart';
part 'color_schemes.g.dart';

ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _darkColorScheme.primaryContainer,
    ),
    segmentedButtonTheme: _segmentedButton);
ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: _lightColorScheme.primaryContainer,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary),
    segmentedButtonTheme: _segmentedButton);

SegmentedButtonThemeData get _segmentedButton =>
    SegmentedButtonThemeData(style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        //gerenciando o estado
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            fontSize: 8,
          );
        }
        return const TextStyle(
          fontSize: 12,
        );
      }),
    ));
