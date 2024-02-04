import 'package:flutter/material.dart';
import 'package:my_resume_app/home/title_button.dart';

class TitleLinks extends StatelessWidget {
  const TitleLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleButton(
          onPressed: () {},
          label: 'HOME',
        ),
        TitleButton(
          onPressed: () {},
          label: 'PROFESSIONAL',
        ),
        TitleButton(
          onPressed: () {},
          label: 'EXPERIENCE',
        ),
        TitleButton(
          onPressed: () {},
          label: 'CONTACT',
        ),
      ],
    );
  }
}