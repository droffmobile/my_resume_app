import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  _launchLinkedIn() async {
    final url = Uri.parse('https://www.linkedin.com/in/droff75/');
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
    return Container(
      color: Colors.black26,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Contact: ',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
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
            const SizedBox(height: 20),
            SizedBox(
                height: 50,
                child: Image.asset(
                  'assets/images/built_with_flutter.png',
                  fit: BoxFit.fitHeight,
                )),
          ],
        ),
      ),
    );
  }
}
