import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          backgroundColor: Color.fromARGB(255, 255, 0, 72),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddNoteButtomShet();
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

class AddNoteButtomShet extends StatelessWidget {
  const AddNoteButtomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
