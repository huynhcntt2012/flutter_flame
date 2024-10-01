import 'package:flame/components.dart';
import 'package:flutter_flame/model/food.dart';

class Snake extends PositionComponent {
  List<Vector2> body = [Vector2(10, 10)];
  Vector2 direction = Vector2(1, 0);
  double speed = 1.0;
  double sizesnake = 10.0;

  Snake() {
    sizesnake = 10.0; // Kích thước từng đoạn của rắn
  }

  @override
  void update(double dt) {
    // Cập nhật vị trí di chuyển của rắn
    Vector2 newHead = body.first + direction * speed;
    body.insert(0, newHead); // Thêm đoạn mới vào đầu rắn
    body.removeLast(); // Xóa đoạn cuối cùng để không dài thêm (trừ khi ăn thức ăn)
  }

  void updateSpeed(int level) {
    // Tăng tốc độ rắn theo level
    speed = 1.0 + 0.1 * level;
  }

  bool eatsFood(Food food) {
    return body.first.distanceTo(food.position) < sizesnake;
  }
}
