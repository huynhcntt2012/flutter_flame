import 'package:flame/components.dart';
import 'package:flutter_flame/snake_game.dart';

class Hud extends TextComponent {
  SnakeGame game;

  Hud(this.game) {
    position = Vector2(20, 20); // Đặt vị trí HUD
  }

  @override
  void update(double dt) {
    text = 'Level: ${game.level}  Score: ${game.score}';
    super.update(dt);
  }
}
