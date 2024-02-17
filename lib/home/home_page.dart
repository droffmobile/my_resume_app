import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:my_resume_app/common/widgets/resume_appbar.dart';
import 'package:my_resume_app/home/about_my_work.dart';
import 'package:my_resume_app/home/professional_info.dart';
import 'package:my_resume_app/home/resume_header.dart';
import 'package:my_resume_app/home/resume_nav_drawer.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
            ProfessionalInfo(key: professionalKey),
            ExperienceInfo(key: experienceKey),
            Container(
              key: contactKey,
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/images/built_with_flutter.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '02 ${AppStrings.experience}',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 46,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        TimelineTile(
          alignment: TimelineAlign.center,
          isFirst: true,
          endChild: const ExperienceTile(
            timeRange: 'Jan 2024 - Present',
            employer: 'World Wide Technology',
            title: 'Software Engineer IV',
            secondaryTitle: 'Tech Lead',
            description: AppStrings.experienceParagraph1,
            alignment: Alignment.centerLeft,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          startChild: const ExperienceTile(
            timeRange: 'Jun 2019 - Feb 2024',
            employer: 'World Wide Technology',
            title: 'Software Engineer III',
            secondaryTitle: 'Tech Lead',
            description: AppStrings.experienceParagraph2,
            alignment: Alignment.centerRight,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          endChild: const ExperienceTile(
            timeRange: 'Feb 2019 - Jun 2019',
            employer: 'World Wide Technology',
            title: 'Developer Apprentice',
            description: AppStrings.experienceParagraph3,
            alignment: Alignment.centerLeft,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          startChild: const ExperienceTile(
            timeRange: 'Nov 2015 - Feb 2019',
            employer: 'World Wide Technology',
            title: 'Quality Advocate',
            description: AppStrings.experienceParagraph4,
            alignment: Alignment.centerRight,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          isLast: true,
          endChild: const ExperienceTile(
            timeRange: 'Jan 2009 - Nov 2015',
            employer: 'Scottrade',
            title: 'QA Engineer',
            description: AppStrings.experienceParagraph5,
            alignment: Alignment.centerLeft,
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class ExperienceTile extends StatelessWidget {
  const ExperienceTile({
    super.key,
    required this.timeRange,
    required this.employer,
    required this.title,
    this.secondaryTitle,
    required this.description,
    required this.alignment,
  });

  final String timeRange;
  final String employer;
  final String title;
  final String? secondaryTitle;
  final String description;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              timeRange,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
            Text(
              employer,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (secondaryTitle != null)
              Text(
                secondaryTitle!,
                style: const TextStyle(
                  color: Color(0xFFB7BABC),
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              description,
              style: const TextStyle(
                color: Color(0xFFB7BABC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
