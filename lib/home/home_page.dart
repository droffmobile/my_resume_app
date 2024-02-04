import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_resume_app/common/widgets/resume_appbar.dart';
import 'package:my_resume_app/home/about_my_work.dart';
import 'package:my_resume_app/home/resume_header.dart';
import 'package:my_resume_app/home/resume_nav_drawer.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
