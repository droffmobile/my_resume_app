import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:my_resume_app/home/title_button.dart';

class TitleLinks extends StatelessWidget {
  const TitleLinks({
    super.key,
    required this.onTapHome,
    required this.onTapProfessional,
    required this.onTapExperience,
    required this.onTapContact,
  });

  final VoidCallback onTapHome;
  final VoidCallback onTapProfessional;
  final VoidCallback onTapExperience;
  final VoidCallback onTapContact;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleButton(
          onPressed: onTapHome,
          label: AppStrings.home,
        ),
        TitleButton(
          onPressed: onTapProfessional,
          label: AppStrings.skills,
        ),
        TitleButton(
          onPressed: onTapExperience,
          label: AppStrings.experience,
        ),
        TitleButton(
          onPressed: onTapContact,
          label: AppStrings.contact,
        ),
      ],
    );
  }
}
