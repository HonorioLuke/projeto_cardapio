import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // O erro estava reclamando que não achava essa linha abaixo:
  static ThemeData
  get darkTheme {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
      ),
      useMaterial3: true,
      fontFamily: 'Georgia',
    );
  }
}
