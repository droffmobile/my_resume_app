import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_resume_app/common/widgets/resume_appbar.dart';
import 'package:my_resume_app/home/about_my_work.dart';
import 'package:my_resume_app/home/contact_info.dart';
import 'package:my_resume_app/home/experience_info.dart';
import 'package:my_resume_app/home/skills_info.dart';
import 'package:my_resume_app/home/resume_header.dart';
import 'package:my_resume_app/home/resume_nav_drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final homeKey = GlobalKey();
    final professionalKey = GlobalKey();
    final experienceKey = GlobalKey();
    final contactKey = GlobalKey();
    onTapHome() => Scrollable.ensureVisible(
          homeKey.currentContext!,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
    onTapProfessional() => Scrollable.ensureVisible(
          professionalKey.currentContext!,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
    onTapExperience() => Scrollable.ensureVisible(
          experienceKey.currentContext!,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
    onTapContact() => Scrollable.ensureVisible(
          contactKey.currentContext!,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
    return Scaffold(
      backgroundColor: const Color(0xFF224055),
      appBar: ResumeAppBar(
        onTapHome: onTapHome,
        onTapProfessional: onTapProfessional,
        onTapExperience: onTapExperience,
        onTapContact: onTapContact,
      ),
      endDrawer: screenWidth < 768
          ? ResumeNavDrawer(
              onTapHome: onTapHome,
              onTapProfessional: onTapProfessional,
              onTapExperience: onTapExperience,
              onTapContact: onTapContact,
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          key: homeKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ColumnSuper(
              innerDistance: -18,
              children: const [
                ResumeHeader(),
                AboutMyWork(),
              ],
            ),
            const SizedBox(height: 20),
            SkillsInfo(key: professionalKey),
            ExperienceInfo(key: experienceKey),
            ContactInfo(key: contactKey),
          ],
        ),
      ),
    );
  }
}
