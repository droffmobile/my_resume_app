import 'package:flutter/material.dart';
import 'package:my_resume_app/home/title_button_style.dart';

class TitleButton extends StatelessWidget {
  const TitleButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TitleButtonStyle(),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}