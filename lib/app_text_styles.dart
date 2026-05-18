import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract final class AppTextStyles {
  static TextStyle get displayLarge => GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w700, height: 1.2);

  static TextStyle get headlineLarge => GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700, height: 1.3);

  static TextStyle get headlineMedium => GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w700, height: 1.3);

  static TextStyle get titleLarge => GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600, height: 1.4);

  static TextStyle get titleMedium => GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600, height: 1.4);

  static TextStyle get titleSmall => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, height: 1.4);

  static TextStyle get bodyLarge => GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5);

  static TextStyle get bodyMedium => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, height: 1.5);

  static TextStyle get bodySmall => GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400, height: 1.5);

  static TextStyle get labelLarge => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, height: 1.4);

  static TextStyle get labelSmall => GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, height: 1.4);

  static TextTheme get light => TextTheme(
    displayLarge: displayLarge.copyWith(color: AppColors.textPrimary),
    headlineLarge: headlineLarge.copyWith(color: AppColors.textPrimary),
    headlineMedium: headlineMedium.copyWith(color: AppColors.textPrimary),
    titleLarge: titleLarge.copyWith(color: AppColors.textPrimary),
    titleMedium: titleMedium.copyWith(color: AppColors.textPrimary),
    titleSmall: titleSmall.copyWith(color: AppColors.textSecondary),
    bodyLarge: bodyLarge.copyWith(color: AppColors.textPrimary),
    bodyMedium: bodyMedium.copyWith(color: AppColors.textPrimary),
    bodySmall: bodySmall.copyWith(color: AppColors.textSecondary),
    labelLarge: labelLarge.copyWith(color: AppColors.textPrimary),
    labelSmall: labelSmall.copyWith(color: AppColors.textSecondary),
  );

  static TextTheme get dark => TextTheme(
    displayLarge: displayLarge.copyWith(color: const Color(0xFFE8F0FE)),
    headlineLarge: headlineLarge.copyWith(color: const Color(0xFFE8F0FE)),
    headlineMedium: headlineMedium.copyWith(color: const Color(0xFFE8F0FE)),
    titleLarge: titleLarge.copyWith(color: const Color(0xFFE8F0FE)),
    titleMedium: titleMedium.copyWith(color: const Color(0xFFE8F0FE)),
    titleSmall: titleSmall.copyWith(color: const Color(0xFF8AAED4)),
    bodyLarge: bodyLarge.copyWith(color: const Color(0xFFE8F0FE)),
    bodyMedium: bodyMedium.copyWith(color: const Color(0xFFE8F0FE)),
    bodySmall: bodySmall.copyWith(color: const Color(0xFF8AAED4)),
    labelLarge: labelLarge.copyWith(color: const Color(0xFFE8F0FE)),
    labelSmall: labelSmall.copyWith(color: const Color(0xFF8AAED4)),
  );
}
