import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 40),
        Text(
          'Notes',
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 28,
              inherit: false),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
