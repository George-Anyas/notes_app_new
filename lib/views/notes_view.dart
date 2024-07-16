import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app_new/contants.dart';
import 'package:notes_app_new/widgets/add_note_buttom_shet.dart';
import 'package:notes_app_new/widgets/custom_appbar.dart';
import 'package:notes_app_new/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 28,
          ),
          backgroundColor: kprimaryColor,
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteButtomShet();
                });
          }),
      body: const Padding(
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
