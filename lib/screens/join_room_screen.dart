import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/widgets/custom_button.dart';
import 'package:tictaktoe/widgets/custom_text.dart';
import 'package:tictaktoe/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';

  const JoinRoomScreen({Key? key}) : super(key: key);

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _gameIDController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _gameIDController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(shadow: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.blue,
                )
              ], text: "Join Room", fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter your nikename"),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _gameIDController, hintText: "Enter Game ID"),
              SizedBox(
                height: size.height * 0.045,
              ),
              CustomButton(onTap: () {}, text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}
