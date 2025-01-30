// lib/constants/app_text_styles.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle subheading = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static TextStyle bodyText = TextStyle(
    color: AppColors.textSecondaryColor,
    fontSize: 16,
  );
}
