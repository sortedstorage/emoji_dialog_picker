import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// {@template scroll_glow_remover}
/// Removes scroll glow effect when scrolling at the ends of a list.
/// {@endtemplate}
class ScrollGlowRemover extends MaterialScrollBehavior {
  /// {@macro scroll_glow_remover}
  const ScrollGlowRemover();

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
