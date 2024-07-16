import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_text_field.dart';

class AddNoteButtomShet extends StatelessWidget {
  const AddNoteButtomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            title: 'T i t l e',
            maxLines: 1,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(title: 'C o n t e n t', maxLines: 5)
        ],
      ),
    );
  }
}
