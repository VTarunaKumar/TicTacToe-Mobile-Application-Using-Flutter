import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ElevatedButton(
        onPressed: onTap,
        // ignore: sort_child_properties_last
        child: Text(text),
        style: ElevatedButton.styleFrom(minimumSize: Size(width, 50)));
  }
}
