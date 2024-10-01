import 'package:flutter/material.dart';
import 'package:flutter_flame/game_app.dart';
import 'package:flame/flame.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setPortrait();

  runApp(const GameApp());
}
