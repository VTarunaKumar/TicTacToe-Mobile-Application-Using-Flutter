import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/widgets/custom_button.dart';
import 'package:tictaktoe/widgets/custom_text.dart';
import 'package:tictaktoe/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
              ], text: "Create Room", fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter your nikename"),
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
