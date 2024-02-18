import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillsInfo extends StatelessWidget {
  const SkillsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Text(
              '01 ${AppStrings.skills}',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 42,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              AppStrings.selfAssessment,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            SkillTile(
                label: AppStrings.flutter,
                skillLevel: 0.9,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.iosSdk,
                skillLevel: 0.85,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.androidSdk,
                skillLevel: 0.7,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.swift,
                skillLevel: 0.85,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.objC,
                skillLevel: 0.6,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.kotlin,
                skillLevel: 0.7,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.agile,
                skillLevel: 0.9,
                description: AppStrings.flutterDesc),
            SkillTile(
                label: AppStrings.tdd,
                skillLevel: 0.9,
                description: AppStrings.flutterDesc),
          ],
        ),
      ),
    );
  }
}

class SkillProgress extends StatefulWidget {
  const SkillProgress({
    super.key,
    required this.label,
    required this.skillLevel,
  });

  final String label;
  final double skillLevel;

  @override
  State<SkillProgress> createState() => _SkillProgressState();
}

class _SkillProgressState extends State<SkillProgress>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation =
        Tween<double>(begin: 0.0, end: widget.skillLevel).animate(controller)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicWidth(
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: VisibilityDetector(
                key: Key('progressIndicator${widget.label}'),
                onVisibilityChanged: (VisibilityInfo info) {
                  if (info.visibleFraction == 1) {
                    controller.forward(from: 0);
                  } else {
                    controller.value = 0;
                  }
                },
                child: LinearProgressIndicator(
                  backgroundColor: Colors.black87,
                  color: Colors.white70,
                  value: animation.value,
                  valueColor: const AlwaysStoppedAnimation(Colors.white70),
                  minHeight: 18,
                ),
              ),
            ),
            // const SizedBox(width: 20),
            // Text(
            //   '${(skillLevel * 100).toStringAsFixed(0)}%',
            //   style: const TextStyle(
            //     fontSize: 24,
            //     color: Colors.white30,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class SkillTile extends StatefulWidget {
  const SkillTile({
    super.key,
    required this.label,
    required this.skillLevel,
    required this.description,
  });

  final String label;
  final double skillLevel;
  final String description;

  @override
  State<SkillTile> createState() => _SkillTileState();
}

class _SkillTileState extends State<SkillTile> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        iconColor: Colors.white70,
        collapsedIconColor: Colors.white70,
        controlAffinity: ListTileControlAffinity.leading,
        title:
            SkillProgress(label: widget.label, skillLevel: widget.skillLevel),
        children: [
          Text(widget.description, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}