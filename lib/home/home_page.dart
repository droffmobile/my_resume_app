import 'package:flutter/material.dart';
import 'package:my_resume_app/home/resume_header.dart';
import 'package:my_resume_app/home/title_links.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF224055),
      appBar: AppBar(
        elevation: 5,
        title: const TitleLinks(),
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(
                Icons.alternate_email_sharp,
                color: Color(0xFFc3dbeb),
                size: 18,
              ),
              Text(
                'DR',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFc3dbeb),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ResumeHeader(),
            Container(
              color: Colors.red,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}








