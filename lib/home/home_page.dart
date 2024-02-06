import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFF224055),
      appBar: const ResumeAppBar(),
      endDrawer: screenWidth < 768 ? const ResumeNavDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
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
            const ProfessionalInfo(),
            const ExperienceInfo(),
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
        TimelineTile(
          alignment: TimelineAlign.center,
          isFirst: true,
          endChild: const ExperienceTile(
            timeRange: 'Jan 2024 - Present',
            employer: 'World Wide Technology',
            title: 'Mobile Software Engineer IV',
            secondaryTitle: 'Tech Lead',
            description: 'A paragraph of stuff',
            alignment: Alignment.centerLeft,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          startChild: const ExperienceTile(
            timeRange: 'Jun 2019 - Feb 2024',
            employer: 'World Wide Technology',
            title: 'Mobile Software Engineer III',
            description: 'Paragraph of stuff',
            alignment: Alignment.centerRight,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          endChild: const ExperienceTile(
            timeRange: 'Feb 2019 - Jun 2019',
            employer: 'World Wide Technology',
            title: 'Developer Apprentice',
            description: 'A paragraph of stuff.',
            alignment: Alignment.centerLeft,
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          startChild: const ExperienceTile(
            timeRange: 'Nov 2015 - Feb 2019',
            employer: 'World Wide Technology',
            title: 'Quality Advocate',
            description: 'A paragraph of stuff',
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
            description: 'A paragraph of stuff',
            alignment: Alignment.centerLeft,
          ),
        ),
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
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              employer,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            if (secondaryTitle != null)
              Text(
                secondaryTitle!,
                style: const TextStyle(color: Colors.white),
              ),
            Text(
              description,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
