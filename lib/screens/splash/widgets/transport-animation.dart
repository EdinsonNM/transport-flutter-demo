import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum TransportAnimationType { bus, train, metro, martin, matt }

class TransportAnimation extends StatelessWidget {
  final TransportAnimationType type;
  final BoxFit fit;
  static const _animationName = 'driving';
  TransportAnimation({Key key, this.type, this.fit}) : super(key: key);
  String getAnimationTypePath(TransportAnimationType type) {
    switch (type) {
      case TransportAnimationType.bus:
        return 'assets/flare/bus.flr';
      case TransportAnimationType.metro:
        return 'assets/flare/metro.flr';
      case TransportAnimationType.train:
        return 'assets/flare/train.flr';
      case TransportAnimationType.martin:
        return 'assets/flare/martin.flr';
      default:
        return 'assets/flare/matt.flr';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      getAnimationTypePath(type),
      alignment: Alignment.center,
      fit: fit ?? BoxFit.fitWidth,
      animation: _animationName,
    );
  }
}
