import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'add_expense.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,

            primary: Color(0xFF1E293B),
            onPrimary: Colors.white,

            secondary: Color(0xFF10B981),
                onSecondary: Colors.white,

            error: Color(0xFFEF4444),
                onError: Colors.white,

            surface: Color(0xFFFFFFFF),
                onSurface: Color(0xFF0F172A),

              outline: Color(0xFFE2E8F0),
        ),
        scaffoldBackgroundColor: const Color(0xFF0F172A),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E293B),
          foregroundColor: Colors.white,
        ),
      ),
      home: AddExpenseScreen(),
    );
  }
}


