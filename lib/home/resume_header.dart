import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeHeader extends StatelessWidget {
  const ResumeHeader({super.key});

  _launchLinkedIn() async {
    final url = Uri.parse('https://www.linkedin.com/in/droffdev/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  _mailTo() async {
    final Uri params = Uri(scheme: 'mailto', path: 'david@droff.dev');
    if (!await launchUrl(params)) {
      throw Exception('Could not launch mailto');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Colors.black26,
          height: screenWidth > 1056 ? 432 : 832,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Wrap(
                spacing: 100,
                children: [
                  const CircleAvatar(
                    radius: 200,
                    backgroundImage: AssetImage('assets/images/my_photo.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(AppStrings.whoIAm,
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white30)),
                      const SizedBox(height: 20),
                      const Text(AppStrings.whatIDo,
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white30,
                          )),
                      const SizedBox(height: 10),
                      const Text.rich(
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
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: _launchLinkedIn,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                'assets/images/linkedin.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: _mailTo,
                            child: const Icon(
                              Icons.email_outlined,
                              size: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
