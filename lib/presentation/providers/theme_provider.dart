import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Selected color
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Objeto de tipo de AppTheme personalizado
final appThemeNotifierProvider =
    StateNotifierProvider<ThemeNotififier, AppTheme>(
        (ref) => ThemeNotififier());

class ThemeNotififier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotififier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
