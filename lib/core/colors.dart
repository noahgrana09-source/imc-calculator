import "dart:ui";

class AppColors {
  // Colores principales
  static const Color primary = Color(0xFF6C63FF);       // Violeta vibrante
  static const Color darkPrimary = Color(0xFF0C0B27);   // Violeta oscuro elegante
  static const Color lightPrimary = Color(0xFFB3B0FF);  // Violeta pastel para fondos

  // Extensión de la escala
  static const Color primary10 = Color(0xFFF4F2FF);     // Fondo muy claro
  static const Color primary20 = Color(0xFFE0DCFF);     // Hover/fondo suave
  static const Color primary30 = Color(0xFFC2BEFF);     // Borde / surface light
  static const Color primary40 = Color(0xFF958BFF);     // Texto destacado / iconos secundarios
  static const Color primary50 = primary;               // Base
  static const Color primary60 = Color(0xFF5749CC);     // Hover sobre base
  static const Color primary70 = Color(0xFF4335A1);     // Pressed
  static const Color primary80 = Color(0xFF322673);     // Fondos oscuros
  static const Color primary90 = darkPrimary;           // Casi negro

  // Textos e íconos
  static const Color textOrIcons = Color(0xFFFFFFFF);   // Blanco puro
  static const Color primaryText = Color(0xFF1E1E1E);   // Texto principal (casi negro)
  static const Color secondaryText = Color(0xFF616161); // Texto secundario gris equilibrado

  // Colores auxiliares
  static const Color accent = Color(0xFFFF6F61);        // Coral moderno (color secundario)
  static const Color divider = Color(0xFFE0E0E0);       // Gris claro sutil para divisores
  static const Color error = Color(0xFFE53935);         // Rojo accesible para errores

  // Nuevos (puedes usarlos más adelante sin romper el proyecto)
  static const Color success = Color(0xFF43A047);       // Verde éxito / confirmaciones
  static const Color warning = Color(0xFFFFA726);       // Naranja para advertencias
  static const Color info = Color(0xFF29B6F6);          // Azul claro para información
  static const Color background = Color(0xFFF9F9F9);    // Fondo claro general
  static const Color card = Color(0xFFFFFFFF);          // Fondo de tarjetas
  static const Color muted = Color(0xFF9E9E9E);         // Texto deshabilitado / elementos secundarios
}
