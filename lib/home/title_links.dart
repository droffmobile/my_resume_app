import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:my_resume_app/home/title_button.dart';

class TitleLinks extends StatelessWidget {
  const TitleLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleButton(
          onPressed: () {},
          label: AppStrings.home,
        ),
        TitleButton(
          onPressed: () {},
          label: AppStrings.professional,
        ),
        TitleButton(
          onPressed: () {},
          label: AppStrings.experience,
        ),
        TitleButton(
          onPressed: () {},
          label: AppStrings.contact,
        ),
      ],
    );
  }
}
