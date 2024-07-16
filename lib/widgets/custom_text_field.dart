import 'package:flutter/material.dart';
import 'package:notes_app_new/contants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.maxLines = 1});
  final String title;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(
          color: kprimaryColor,
          fontSize: 14,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: kprimaryColor),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
