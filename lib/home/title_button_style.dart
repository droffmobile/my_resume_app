import 'package:flutter/material.dart';

class TitleButtonStyle extends ButtonStyle {
  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      const MaterialStatePropertyAll(Color(0xFFc3dbeb));
  @override
  InteractiveInkFeatureFactory? get splashFactory => NoSplash.splashFactory;
  @override
  MaterialStateProperty<Color?>? get overlayColor =>
      const MaterialStatePropertyAll(Colors.transparent);
}