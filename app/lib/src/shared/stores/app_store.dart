import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  void changeThemeMode(ThemeMode? mode) {
    if (themeMode != null) {
      themeMode.value = mode!;
      save();
    }
  }

  void save() {}
}
