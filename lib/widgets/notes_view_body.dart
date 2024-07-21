import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_new/views/edit_note_view.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips ',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'build your carrer with george soliman ',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  )),
            ),
            const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'may21,2022',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
