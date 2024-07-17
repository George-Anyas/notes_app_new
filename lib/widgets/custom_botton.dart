import 'package:flutter/material.dart';
import 'package:notes_app_new/contants.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
