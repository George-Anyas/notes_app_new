import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: NotesBody(),
              );
            }),
      ),
    );
  }
}
