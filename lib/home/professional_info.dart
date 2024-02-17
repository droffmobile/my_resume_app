import 'package:flutter/material.dart';
import 'package:my_resume_app/common/constants/app_strings.dart';

class ProfessionalInfo extends StatelessWidget {
  const ProfessionalInfo({super.key});

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
              '01 ${AppStrings.professional}',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 46,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              AppStrings.myKnowledgeLevels,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            SkillProgress(label: AppStrings.flutter, skillLevel: 0.9),
            SkillProgress(label: AppStrings.iosSdk, skillLevel: 0.85),
            SkillProgress(label: AppStrings.androidSdk, skillLevel: 0.7),
            SkillProgress(label: AppStrings.swift, skillLevel: 0.85),
            SkillProgress(label: AppStrings.objC, skillLevel: 0.6),
            SkillProgress(label: AppStrings.kotlin, skillLevel: 0.7),
            SkillProgress(label: AppStrings.agile, skillLevel: 0.9),
            SkillProgress(label: AppStrings.tdd, skillLevel: 0.9),
          ],
        ),
      ),
    );
  }
}

class SkillProgress extends StatelessWidget {
  const SkillProgress({
    super.key,
    required this.label,
    required this.skillLevel,
  });

  final String label;
  final double skillLevel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 180,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white30,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: LinearProgressIndicator(
              value: skillLevel,
              minHeight: 18,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            '${(skillLevel * 100).toStringAsFixed(0)}%',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white30,
            ),
          ),
        ],
      ),
    );
  }
}
