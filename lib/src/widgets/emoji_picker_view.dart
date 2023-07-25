import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart' hide SearchBar;

import '../cubit/emoji_picker_cubit.dart';
import '../cubit/emoji_picker_state.dart';
import '../emoji_repository.dart';
import '../models/models.dart';
import '../scroll_glow_remover.dart';
import 'emoji_icon_selector.dart';
import 'search_bar.dart';

/// {@template emoji_picker_view}
/// Displays the emoji picker.
/// {@endtemplate}
class EmojiPickerView extends StatefulWidget {
  /// {@macro emoji_picker_view}
  const EmojiPickerView({
    Key? key,
    required this.onEmojiSelected,
    this.height,
    this.width,
    this.decoration,
    this.scrollBehavior,
    this.header,
    this.hintText = 'Search for an emoji',
    this.backgroundColor,
    this.searchBarColor,
    this.searchIconColor,
    this.searchShapeBorder,
    this.textStyle,
    this.hintStyle,
    this.activeColor,
    this.inactiveColor,
  }) : super(key: key);

  /// Optional height of [EmojiPickerView].
  final double? height;

  /// Optional width of [EmojiPickerView].
  final double? width;

  /// Decoration of [EmojiPickerView].
  final Decoration? decoration;

  /// Background color of [EmojiPickerView].
  final Color? backgroundColor;

  /// Triggers when an emoji is selected.
  final Function(String emoji) onEmojiSelected;

  /// Describes how the CustomScrollView and ListView should behave.
  final ScrollBehavior? scrollBehavior;

  /// Widget to display on the header
  final Widget? header;

  /// {@macro hint_text}
  final String hintText;

  /// {@macro search_bar_color}
  final Color? searchBarColor;

  /// {@macro search_bar_icon_color}
  final Color? searchIconColor;

  /// {@macro search_bar_shape_border}
  final ShapeBorder? searchShapeBorder;

  /// {@macro search_bar_text_style}
  final TextStyle? textStyle;

  /// {@macro search_bar_hint_style}
  final TextStyle? hintStyle;

  /// {@macro emoji_icon_selector_active_color}
  final Color? activeColor;

  /// {@macro emoji_icon_selector_active_color}
  final Color? inactiveColor;

  @override
  State<EmojiPickerView> createState() => _EmojiPickerViewState();
}

class _EmojiPickerViewState extends State<EmojiPickerView> {
  final emojiRepository = EmojiRepository();
  late final EmojiPickerCubit emojiPickerCubit;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: widget.height ?? mediaQuery.size.height * 0.7,
      width: widget.width ?? mediaQuery.size.width * 0.85,
      decoration: widget.decoration ??
          BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          scrollBehavior: widget.scrollBehavior ?? const ScrollGlowRemover(),
          slivers: [
            SliverToBoxAdapter(
              child: widget.header,
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
              sliver: SliverToBoxAdapter(
                child: SearchBar(
                  hintText: widget.hintText,
                  onChanged: (filter) =>
                      emojiPickerCubit.filterEmoji(context, filter!),
                  color: widget.searchBarColor,
                  searchIconColor: widget.searchIconColor,
                  shapeBorder: widget.searchShapeBorder,
                  textStyle: widget.textStyle,
                  hintStyle: widget.hintStyle,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 18),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                  child: Center(
                    child: StreamBuilder<EmojiPickerState>(
                      stream: emojiPickerCubit.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final state = snapshot.data!;
                          if (state.isSearching) {
                            return const SizedBox();
                          }

                          final selectedEmojiType = state.selectedEmojiType;
                          return ScrollConfiguration(
                            behavior: widget.scrollBehavior ??
                                const ScrollGlowRemover(),
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                EmojiIconSelector(
                                  isSelected:
                                      selectedEmojiType == EmojiType.activity,
                                  icon: const Icon(Icons.sports_basketball),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.activity),
                                ),
                                EmojiIconSelector(
                                  isSelected: selectedEmojiType ==
                                      EmojiType.animalsAndNature,
                                  icon: const Icon(Icons.park),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.animalsAndNature),
                                ),
                                EmojiIconSelector(
                                  isSelected:
                                      selectedEmojiType == EmojiType.flags,
                                  icon: const Icon(Icons.flag),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.flags),
                                ),
                                EmojiIconSelector(
                                  isSelected: selectedEmojiType ==
                                      EmojiType.foodAndDrink,
                                  icon: const Icon(Icons.fastfood),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.foodAndDrink),
                                ),
                                EmojiIconSelector(
                                  isSelected:
                                      selectedEmojiType == EmojiType.objects,
                                  icon: const Icon(EvaIcons.cube),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.objects),
                                ),
                                EmojiIconSelector(
                                  isSelected:
                                      selectedEmojiType == EmojiType.people,
                                  icon: const Icon(Icons.emoji_emotions),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.people),
                                ),
                                EmojiIconSelector(
                                  isSelected:
                                      selectedEmojiType == EmojiType.symbols,
                                  icon: const Icon(EvaIcons.info),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.symbols),
                                ),
                                EmojiIconSelector(
                                  isSelected: selectedEmojiType ==
                                      EmojiType.travelsAndPlaces,
                                  icon: const Icon(Icons.landscape),
                                  activeColor: widget.activeColor,
                                  inactiveColor: widget.inactiveColor,
                                  onTap: () => emojiPickerCubit.getEmoji(
                                      context, EmojiType.travelsAndPlaces),
                                ),
                              ],
                            ),
                          );
                        }

                        return const SizedBox();
                      },
                    ),
                  ),
                ),
              ),
            ),
            StreamBuilder<EmojiPickerState>(
              stream: emojiPickerCubit.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final state = snapshot.data!;
                  if (state.emojis == null) {
                    return const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  } else if (state.emojis!.isEmpty) {
                    return SliverFillRemaining(
                      child: Center(
                        child: Text(
                          'No Results Found',
                          style: widget.textStyle,
                        ),
                      ),
                    );
                  }

                  return SliverPadding(
                    padding: const EdgeInsets.only(left: 12, top: 12),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 48,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            child: GestureDetector(
                              onTap: () {
                                widget.onEmojiSelected(
                                  state.emojis!.elementAt(index).emoji,
                                );
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  state.emojis!.elementAt(index).emoji,
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: state.emojis!.length,
                      ),
                    ),
                  );
                }
                return const SliverToBoxAdapter();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    emojiPickerCubit = EmojiPickerCubit(emojiRepository)
      ..getEmoji(context, EmojiType.activity);

    super.initState();
  }
}
