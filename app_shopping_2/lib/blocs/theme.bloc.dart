import 'package:app_shopping_2/settings.dart';
import 'package:app_shopping_2/themes/dark-yellow-theme.dart';
import 'package:app_shopping_2/themes/dark.theme.dart';
import 'package:app_shopping_2/themes/light.theme.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeBloc extends ChangeNotifier {
  var theme = lightTheme();

  ThemeBloc() {
    _loadTheme();
  }

  change(String color) {
    switch (color) {
      case 'light':
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }

      case 'dark':
        {
          theme = darkTheme();
          Settings.theme = "dark";
          notifyListeners();
          break;
        }

      case 'dark-yellow':
        {
          theme = darkYellowTheme();
          Settings.theme = "dark-yellow";
          notifyListeners();
          break;
        }

      default:
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }
    }
  }

  Future save(theme) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('theme', theme);
    change(theme);
  }

  Future _loadTheme() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    var _theme = sharedPreferences.getString('theme');
    Settings.theme = _theme == null ? 'light' : _theme;
    change(Settings.theme);
  }
}
