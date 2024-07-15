import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app_new/widgets/custom_appbar.dart';
import 'package:notes_app_new/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
