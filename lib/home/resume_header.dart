import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';

class ResumeHeader extends StatelessWidget {
  const ResumeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.black26,
          height: screenWidth > 1056 ? 432 : 800,
          width: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Wrap(
            spacing: 100,
            children: [
              CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage('assets/images/my_photo.jpg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.whoIAm,
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30)),
                  SizedBox(height: 20),
                  Text(AppStrings.whatIDo,
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white30,
                      )),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.flutter,
                          style: TextStyle(color: Color(0xFF5FC5F5)),
                        ),
                        TextSpan(
                          text: AppStrings.divider,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                        ),
                        TextSpan(
                          text: AppStrings.iOS,
                          style: TextStyle(color: Color(0xFF1D71F1)),
                        ),
                        TextSpan(
                          text: AppStrings.divider,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                        ),
                        TextSpan(
                          text: AppStrings.android,
                          style: TextStyle(color: Color(0xFF3ddc84)),
                        ),
                      ],
                    ),
                  ),
                  // Text("Flutter / iOS / Android")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
