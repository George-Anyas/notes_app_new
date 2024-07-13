import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [CustomAppBar()],
      ),
    );
  }
}
