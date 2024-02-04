import 'package:flutter/material.dart';
import 'package:my_resume_app/home/home_page.dart';

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '@DR',
      theme: ThemeData(
        fontFamily: 'RobotoMono',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
