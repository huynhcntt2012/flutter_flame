import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame/constants.dart';
import 'package:flutter_flame/player.dart';

class GoGreen extends FlameGame {
  GoGreen()
      : super(
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  @override
  FutureOr<void> onLoad() {
    super.onLoad();

    world.add(Player(
      position: Vector2(-(gameWidth / 4), 0),
      radius: gameWidth / 4,
    ));

    world.add(Player(
      position: Vector2(gameWidth / 4, 0),
      radius: gameWidth / 4,
      color: Colors.blue,
    ));
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
