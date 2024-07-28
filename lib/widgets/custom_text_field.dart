import 'package:flutter/material.dart';
import 'package:notes_app_new/contants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.title, this.maxLines = 1, this.onsaved});
  final String title;
  final int maxLines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return ' field is required ';
        } else {
          return null;
        }
      },
      onSaved: onsaved,
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
      borderSide: const BorderSide(color: kprimaryColor),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
