import 'colors.dart';
import 'package:flutter/material.dart';
class AppStyles {
  // Títulos grandes
  static const TextStyle title = TextStyle(
    color: AppColors.textOrIcons,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: "StoryScript"
  );

  // Subtítulos
  static const TextStyle subtitle = TextStyle(
    color: AppColors.textOrIcons,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // Texto normal / body
  static const TextStyle body = TextStyle(
    color: AppColors.textOrIcons,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static ButtonStyle mainButton = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(AppColors.accent),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      )
    )
  );
}