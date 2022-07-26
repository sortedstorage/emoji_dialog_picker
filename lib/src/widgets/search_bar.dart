import 'package:flutter/material.dart';

/// {@template search_bar}
/// A search bar that can be used to search for an emoji.
/// {@endtemplate}
class SearchBar extends StatelessWidget {
  /// {@macro search_bar}
  const SearchBar({
    Key? key,
    required this.hintText,
    this.onChanged,
    this.color,
    this.textStyle,
    this.hintStyle,
    this.searchIconColor,
    this.shapeBorder,
  }) : super(key: key);

  /// {@template hint_text}
  /// The hint text to display in the search bar.
  /// {@endtemplate}
  final String hintText;

  /// Triggers when the text in the search bar changes.
  final Function(String?)? onChanged;

  /// {@template search_bar_color}
  /// The background color of the search bar.
  /// {@endtemplate}
  final Color? color;

  /// {@template search_bar_icon_color}
  /// The color of the search icon
  /// {@endtemplate}
  final Color? searchIconColor;

  /// {@template search_bar_shape_border}
  /// The shape of the search bar.
  /// {@endtemplate}
  final ShapeBorder? shapeBorder;

  /// {@template search_bar_text_style}
  /// The text style of the search bar.
  /// {@endtemplate}
  final TextStyle? textStyle;

  /// {@template search_bar_hint_style}
  /// The text style of the hint text.
  /// {@endtemplate}
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: shapeBorder ?? const StadiumBorder(),
      child: TextFormField(
        style: textStyle,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 12,
            ),
            child: Icon(
              Icons.search,
              color: searchIconColor ?? Colors.grey,
            ),
          ),
          prefixIconConstraints:
              const BoxConstraints(minWidth: 12, minHeight: 12),
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: '',
        ),
        onChanged: onChanged,
      ),
    );
  }
}
