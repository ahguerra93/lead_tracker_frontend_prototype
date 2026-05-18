import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color primary = Color(0xFF1A73E8);
  static const Color primaryDark = Color(0xFF0D47A1);
  static const Color primaryContainer = Color(0xFFE8F0FE);
  static const Color softAccent = Color(0xFF4285F4);

  static const Color background = Color(0xFFF8FBFF);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceSoft = Color(0xFFF1F6FF);
  static const Color border = Color(0xFFDAE7FF);

  static const Color textPrimary = Color(0xFF0D1B2A);
  static const Color textSecondary = Color(0xFF5A7090);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF2E7D32);
}

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color primary;
  final Color primaryDark;
  final Color primaryContainer;
  final Color softAccent;
  final Color background;
  final Color surface;
  final Color surfaceSoft;
  final Color border;
  final Color textPrimary;
  final Color textSecondary;
  final Color textOnPrimary;

  const AppColorTheme({
    required this.primary,
    required this.primaryDark,
    required this.primaryContainer,
    required this.softAccent,
    required this.background,
    required this.surface,
    required this.surfaceSoft,
    required this.border,
    required this.textPrimary,
    required this.textSecondary,
    required this.textOnPrimary,
  });

  static const AppColorTheme light = AppColorTheme(
    primary: AppColors.primary,
    primaryDark: AppColors.primaryDark,
    primaryContainer: AppColors.primaryContainer,
    softAccent: AppColors.softAccent,
    background: AppColors.background,
    surface: AppColors.surface,
    surfaceSoft: AppColors.surfaceSoft,
    border: AppColors.border,
    textPrimary: AppColors.textPrimary,
    textSecondary: AppColors.textSecondary,
    textOnPrimary: AppColors.textOnPrimary,
  );

  static const AppColorTheme dark = AppColorTheme(
    primary: Color(0xFF4A8FF5),
    primaryDark: Color(0xFF82B1FF),
    primaryContainer: Color(0xFF1C2E4A),
    softAccent: Color(0xFF669DF6),
    background: Color(0xFF0A0F1E),
    surface: Color(0xFF131929),
    surfaceSoft: Color(0xFF1A2540),
    border: Color(0xFF1E3A6E),
    textPrimary: Color(0xFFE8F0FE),
    textSecondary: Color(0xFF8AAED4),
    textOnPrimary: Color(0xFFFFFFFF),
  );

  @override
  AppColorTheme copyWith({
    Color? primary,
    Color? primaryDark,
    Color? primaryContainer,
    Color? softAccent,
    Color? background,
    Color? surface,
    Color? surfaceSoft,
    Color? border,
    Color? textPrimary,
    Color? textSecondary,
    Color? textOnPrimary,
  }) => AppColorTheme(
    primary: primary ?? this.primary,
    primaryDark: primaryDark ?? this.primaryDark,
    primaryContainer: primaryContainer ?? this.primaryContainer,
    softAccent: softAccent ?? this.softAccent,
    background: background ?? this.background,
    surface: surface ?? this.surface,
    surfaceSoft: surfaceSoft ?? this.surfaceSoft,
    border: border ?? this.border,
    textPrimary: textPrimary ?? this.textPrimary,
    textSecondary: textSecondary ?? this.textSecondary,
    textOnPrimary: textOnPrimary ?? this.textOnPrimary,
  );

  @override
  AppColorTheme lerp(covariant AppColorTheme? other, double t) {
    if (other == null) return this;
    return AppColorTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      primaryContainer: Color.lerp(primaryContainer, other.primaryContainer, t)!,
      softAccent: Color.lerp(softAccent, other.softAccent, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSoft: Color.lerp(surfaceSoft, other.surfaceSoft, t)!,
      border: Color.lerp(border, other.border, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
    );
  }
}

extension AppColorThemeExtension on BuildContext {
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()!;
}
