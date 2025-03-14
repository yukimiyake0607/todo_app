import 'package:flutter/material.dart';
import 'package:todo_app/presentation/core/theme/todo_card_color.dart';
import 'package:todo_app/presentation/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: todoMainColor,
        colorScheme: const ColorScheme.light(
          primary: todoMainColor,
          secondary: todoSubColor,
          surface: Colors.white,
        ),
      ),
    );
  }
}
