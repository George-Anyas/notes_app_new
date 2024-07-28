import 'package:flutter/material.dart';

import 'package:notes_app_new/widgets/custom_botton.dart';
import 'package:notes_app_new/widgets/custom_text_field.dart';

class AddNoteButtomShet extends StatelessWidget {
  const AddNoteButtomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteButtomSheet(),
      ),
    );
  }
}

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTile;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            title: 'T i t l e',
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onsaved: (value) {
                subTile = value;
              },
              title: 'C o n t e n t',
              maxLines: 5),
          const SizedBox(
            height: 32,
          ),
          AddNoteButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
