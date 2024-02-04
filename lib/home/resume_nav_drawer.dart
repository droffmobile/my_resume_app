import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';

class ResumeNavDrawer extends StatelessWidget {
  const ResumeNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF224055),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text(AppStrings.home,
                style: TextStyle(color: Color(0xFFc3dbeb))),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(AppStrings.professional,
                style: TextStyle(color: Color(0xFFc3dbeb))),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(AppStrings.experience,
                style: TextStyle(color: Color(0xFFc3dbeb))),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(AppStrings.contact,
                style: TextStyle(color: Color(0xFFc3dbeb))),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
