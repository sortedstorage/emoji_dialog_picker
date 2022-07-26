import 'package:flutter/material.dart';

/// {@template emoji_icon_selector}
/// A widget that allows the user to filter emoji types
/// {@endtemplate}
class EmojiIconSelector extends StatelessWidget {
  /// {@macro emoji_icon_selector}
  const EmojiIconSelector({
    Key? key,
    required this.isSelected,
    required this.icon,
    this.activeColor,
    this.inactiveColor,
    required this.onTap,
  }) : super(key: key);

  /// Wheter this icon is seclected or not
  final bool isSelected;

  /// The icon to display
  final Icon icon;

  /// {@template emoji_icon_selector_active_color}
  /// The color of the [EmojiType] icon when selected
  ///
  /// [EmojiType] icons are located below the [SearchBar]
  /// {@endtemplate}
  final Color? activeColor;

  /// {@template emoji_icon_selector_inactive_color}
  /// The color of the [EmojiType] icon when not selected
  ///
  /// [EmojiType] icons are located below the [SearchBar]
  /// {@endtemplate}
  final Color? inactiveColor;

  /// Triggers when the icon is tapped
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: MouseRegion(
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector(
          onTap: onTap,
          child: IconTheme(
            data: IconThemeData(
              color: isSelected
                  ? activeColor ?? Colors.blue
                  : inactiveColor ?? Colors.grey,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
