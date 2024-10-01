import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter_flame/components/hud.dart';
import 'package:flutter_flame/model/food.dart';

import 'package:flutter_flame/model/snake.dart';

class SnakeGame extends FlameGame {
  // Khởi tạo các biến
  late Snake snake;
  late Food food;
  int level = 1;
  int score = 0;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    startGame();
    add(Hud(this));
  }

  void startGame() {
    // Khởi tạo rắn và thức ăn
    snake = Snake();
    add(snake);

    food = Food();
    add(food);

    // Cập nhật tốc độ rắn theo level
    snake.updateSpeed(level);
  }

  void nextLevel() {
    level += 1;
    snake.updateSpeed(level);
    // Có thể thêm các điều chỉnh khác khi lên level
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (snake.eatsFood(food)) {
      score += 10;
      nextLevel();
      // Tạo thức ăn mới sau khi ăn
      remove(food);
      food = Food();
      add(food);
    }
  }
}
