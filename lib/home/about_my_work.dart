import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:printing/printing.dart';

class AboutMyWork extends StatelessWidget {
  const AboutMyWork({super.key});

  _calculateMinWidth(double screenWidth) {
    switch (screenWidth) {
      case <= 768:
        return screenWidth - 32;
      case > 768 && < 1440:
        return screenWidth / 2;
      default:
        return screenWidth / 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF708090),
          boxShadow: [
            BoxShadow(
                color: Colors.white54,
                blurRadius: 10,
                blurStyle: BlurStyle.solid)
          ],
        ),
        constraints: BoxConstraints(
          minWidth: _calculateMinWidth(screenWidth),
        ),
        width: screenWidth / 4,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 64, left: 64, right: 64),
              child: Text(
                AppStrings.aboutMyWork,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF224055),
                foregroundColor: const Color(0xFF708090),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PdfPreview(
                          build: (format) => rootBundle
                              .load('assets/pdf/droff_resume.pdf')
                              .then((value) => value.buffer.asUint8List()));
                    },
                  ),
                );
              },
              child: const Text(
                'DOWNLOAD RESUME',
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
