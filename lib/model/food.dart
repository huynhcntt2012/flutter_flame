import 'dart:math';

import 'package:flame/components.dart';

class Food extends PositionComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    // Vị trí ngẫu nhiên của thức ăn
    position = Vector2(
      Random().nextDouble() * 300, // Chiều rộng màn hình
      Random().nextDouble() * 300, // Chiều cao màn hình
    );
  }
}
