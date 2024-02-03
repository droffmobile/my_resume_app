import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF224055),
      appBar: AppBar(
        elevation: 5,
        title: const TitleWidget(),
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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResumeHeader(),
          ],
        ),
      ),
    );
  }
}

class ResumeHeader extends StatelessWidget {
  const ResumeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFF6b788b),
          height: 400,
          width: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 300,
                backgroundImage: AssetImage('assets/my_photo.jpg'),
              ),
              SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("I'M\nDAVID\nROFF.",
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text("MOBILE APP DEVELOPER", style: TextStyle(fontSize: 36)),
                  SizedBox(height: 10),
                  Text("Flutter / iOS / Android")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleButton(
          onPressed: () {},
          label: 'HOME',
        ),
        TitleButton(
          onPressed: () {},
          label: 'PROFESSIONAL',
        ),
        TitleButton(
          onPressed: () {},
          label: 'EXPERIENCE',
        ),
        TitleButton(
          onPressed: () {},
          label: 'CONTACT',
        ),
      ],
    );
  }
}

class TitleButton extends StatelessWidget {
  const TitleButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TitleButtonStyle(),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class TitleButtonStyle extends ButtonStyle {
  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      const MaterialStatePropertyAll(Color(0xFFc3dbeb));
  // @override
  // bool? get enableFeedback => false;
  @override
  InteractiveInkFeatureFactory? get splashFactory => NoSplash.splashFactory;
  @override
  // TODO: implement overlayColor
  MaterialStateProperty<Color?>? get overlayColor =>
      const MaterialStatePropertyAll(Colors.transparent);
}
