import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note ',
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}