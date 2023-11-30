import 'package:flutter/material.dart';
import 'package:frontend/token/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'Flutter Demo', theme: _themeData, home: const Home());
}

final _themeData = ThemeData(
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Color(0xFF5E35B1),
      onPrimary: Colors.white,
      primaryContainer: Color(0xFF512DA8),
      onPrimaryContainer: Colors.white,
      secondary: Color(0xFF03A9F4),
      onSecondary: Colors.pink,
      secondaryContainer: Color(0xFF0277BD),
      onSecondaryContainer: Colors.white,
      tertiary: Color(0xFFFFC107),
      onTertiary: Colors.black,
      tertiaryContainer: Color(0xFFFFA000),
      onTertiaryContainer: Colors.black,
      error: Color(0xFFE53935),
      onError: Colors.white,
      errorContainer: Color(0xFFD32F2F),
      onErrorContainer: Colors.white,
      background: Color(0xFF121212),
      onBackground: Colors.white,
      surface: Color(0xFF1E1E1E),
      onSurface: Colors.white,
      surfaceVariant: Color(0xFF333333),
      onSurfaceVariant: Colors.white,
      outline: Color(0xFF757575),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0x55000000),
      scrim: Color(0x99000000),
      inverseSurface: Color(0xFFE0E0E0),
      onInverseSurface: Colors.black,
      inversePrimary: Color(0xFF9C27B0),
      surfaceTint: Color(0x99FFFFFF),
    ),
    useMaterial3: true);
