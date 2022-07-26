import 'package:flutter/material.dart';
import 'emoji_picker_view.dart';

/// {@template emoji_button}
/// A button that can be used to select an emoji.
/// {@endtemplate}
class EmojiButton extends StatelessWidget {
  /// {@macro emoji_button}
  const EmojiButton({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(4),
    required this.emojiPickerView,
    this.minWidth = 0,
    this.maxWidth = double.infinity,
    this.shape,
    this.barrierDismissible = true,
  }) : super(key: key);

  /// The child widget to display in the button.
  final Widget child;

  /// The padding of the button.
  final EdgeInsets padding;

  /// The [EmojiPickerView] to display when the button is tapped.
  final EmojiPickerView emojiPickerView;

  /// The minimum width of the [EmojiPickerView] dialog.
  final double minWidth;

  /// The maximum width of the [EmojiPickerView] dialog.
  final double maxWidth;

  /// The shape of dialog.
  final ShapeBorder? shape;

  /// If true, the dialog can be dismissed by tapping outside of it.
  final bool barrierDismissible;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {
          showDialog<dynamic>(
            context: context,
            barrierDismissible: barrierDismissible,
            builder: (context) {
              return Dialog(
                shape: shape ??
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: minWidth,
                    maxWidth: maxWidth,
                  ),
                  child: emojiPickerView,
                ),
              );
            },
          );
        },
        customBorder: const CircleBorder(),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
