import 'package:flutter/material.dart';
import 'package:tictaktoe/screens/create_room_screen.dart';
import 'package:tictaktoe/screens/join_room_screen.dart';
import 'package:tictaktoe/screens/main_menu_screen.dart';
import 'package:tictaktoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
      },
      // home: const MainMenuScreen(),
      home: MainMenuScreen(),
    );
  }
}
