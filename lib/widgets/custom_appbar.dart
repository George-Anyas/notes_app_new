import 'package:flutter/material.dart';
import 'package:notes_app_new/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 40),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 28,
              inherit: false),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
