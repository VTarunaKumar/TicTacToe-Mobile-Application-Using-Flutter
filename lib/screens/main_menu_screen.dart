import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/screens/create_room_screen.dart';
import 'package:tictaktoe/screens/join_room_screen.dart';
import 'package:tictaktoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});
  void createRoom(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => CreateRoomScreen()));
  }

  void joinRoom(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new JoinRoomScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: "Create Room"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onTap: () => joinRoom(context), text: "Join Room")
          ],
        ),
      ),
    );
  }
}
