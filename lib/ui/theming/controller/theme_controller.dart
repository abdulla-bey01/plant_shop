import '/ui/theming/enum/theme_mode.dart';
import '/ui/theming/model/theme_model.dart';
import '/ui/theming/modes/dark_theme.dart';
import '/ui/theming/modes/light_theme.dart';
import 'package:get/get.dart';

class ThemeController extends RxController {
  final Rx<ThemeMode> _mode = ThemeMode.light.obs;
  ThemeModel get theme =>
      _mode.value == ThemeMode.dark ? darkTheme : lightTheme;
  void toggleTheme() {
    _mode.value =
        _mode.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
