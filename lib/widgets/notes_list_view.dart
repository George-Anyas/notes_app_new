import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: NotesBody(),
        );
      }),
    );
  }
}
