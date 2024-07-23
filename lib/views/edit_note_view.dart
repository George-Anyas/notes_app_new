import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_appbar.dart';
import 'package:notes_app_new/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              title: 'EDIT',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              title: 'EDIT',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
