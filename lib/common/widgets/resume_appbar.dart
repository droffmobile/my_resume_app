import 'package:flutter/material.dart';
import 'package:my_resume_app/home/title_links.dart';

class ResumeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResumeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 5,
      title: screenWidth > 768 ? const TitleLinks() : null,
      automaticallyImplyLeading: false,
      centerTitle: true,
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
      actions: [
        if (screenWidth < 768)
          Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: const Icon(Icons.menu, color: Color(0xFFc3dbeb))))
      ],
    );
  }
}
