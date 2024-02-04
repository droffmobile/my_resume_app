import 'package:flutter/material.dart';

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
                  Text("I'M\nDAVID\nROFF.",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30)),
                  SizedBox(height: 20),
                  Text("MOBILE SOFTWARE ENGINEER",
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white30,
                      )),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Flutter",
                          style: TextStyle(color: Color(0xFF5FC5F5)),
                        ),
                        TextSpan(
                          text: " / ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                        ),
                        TextSpan(
                          text: "iOS",
                          style: TextStyle(color: Color(0xFF1D71F1)),
                        ),
                        TextSpan(
                          text: " / ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white30),
                        ),
                        TextSpan(
                          text: "Android",
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