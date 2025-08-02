import 'package:flutter/material.dart';

class TVDashboardTheme {
  // TV-optimized dark theme with purple/white glow effects
  static ThemeData get tvTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,

      // Primary colors for TV display
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF8B5CF6), // Purple
        secondary: Color(0xFFC084FC), // Light purple
        surface: Color(0xFF1A1A1A), // Dark gray for tiles
        background: Color(0xFF000000), // Pure black
        onPrimary: Color(0xFFFFFFFF), // White text on purple
        onSecondary: Color(0xFF000000), // Black text on light purple
        onSurface: Color(0xFFFFFFFF), // White text on dark surfaces
        onBackground: Color(0xFFFFFFFF), // White text on black
      ),

      // Large, bold fonts for TV visibility
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
          shadows: [
            Shadow(
              color: Color(0xFF8B5CF6),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        displayMedium: TextStyle(
          fontSize: 54,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
          shadows: [
            Shadow(
              color: Color(0xFF8B5CF6),
              blurRadius: 6,
              offset: Offset(0, 1),
            ),
          ],
        ),
        headlineLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
          shadows: [
            Shadow(
              color: Color(0xFFC084FC),
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        headlineMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xFFFFFFFF),
        ),
        bodyMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: Color(0xFFE5E7EB),
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFFC084FC),
        ),
      ),

      // Card theme with glow effects
      cardTheme: CardTheme(
        color: const Color(0xFF1A1A1A),
        elevation: 8,
        shadowColor: const Color(0xFF8B5CF6).withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFF8B5CF6),
            width: 1,
          ),
        ),
      ),

      // Button theme with glow effects
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8B5CF6),
          foregroundColor: const Color(0xFFFFFFFF),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadowColor: const Color(0xFF8B5CF6).withOpacity(0.5),
          elevation: 12,
        ),
      ),

      // AppBar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF000000),
        foregroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
          shadows: [
            Shadow(
              color: Color(0xFF8B5CF6),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }

  // Custom container with glow effect for Recent Activity section
  static Widget glowContainer({
    required Widget child,
    double? width,
    double? height,
    bool isPrimary = false,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isPrimary ? const Color(0xFF8B5CF6) : const Color(0xFF374151),
          width: isPrimary ? 2 : 1,
        ),
        boxShadow: [
          if (isPrimary) ...[
            BoxShadow(
              color: const Color(0xFF8B5CF6).withOpacity(0.4),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
            BoxShadow(
              color: const Color(0xFF8B5CF6).withOpacity(0.2),
              blurRadius: 40,
              spreadRadius: 4,
              offset: const Offset(0, 8),
            ),
          ] else ...[
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ],
      ),
      child: child,
    );
  }

  // Glow text widget
  static Widget glowText(
    String text, {
    TextStyle? style,
    Color glowColor = const Color(0xFF8B5CF6),
    double glowRadius = 8,
  }) {
    return Text(
      text,
      style: (style ?? const TextStyle()).copyWith(
        color: const Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: glowColor,
            blurRadius: glowRadius,
            offset: const Offset(0, 2),
          ),
          Shadow(
            color: glowColor.withOpacity(0.5),
            blurRadius: glowRadius * 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
