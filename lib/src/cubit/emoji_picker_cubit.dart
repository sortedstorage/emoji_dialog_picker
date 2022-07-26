import 'dart:async';

import 'package:flutter/material.dart';

import '../emoji_repository.dart';
import '../models/models.dart';
import 'emoji_picker_state.dart';

class EmojiPickerCubit {
  EmojiPickerCubit(this.emojiRepository) {
    _streamController.add(state);
  }

  final EmojiRepository emojiRepository;

  /// The initial state of the emoji picker.
  var state = const EmojiPickerState(
    isSearching: false,
    emojis: null,
    selectedEmojiType: EmojiType.activity,
  );

  final StreamController<EmojiPickerState> _streamController =
      StreamController<EmojiPickerState>.broadcast();

  Stream<EmojiPickerState> get stream => _streamController.stream;

  /// Gets the list of emojis of a specific [EmojiType].
  Future<void> getEmoji(BuildContext context, EmojiType emojiType) async {
    _streamController.add(
      state.copyWith(
        emojis: await emojiRepository.getEmojis(context, emojiType),
        selectedEmojiType: emojiType,
      ),
    );
  }

  /// Searches for emojis that match the [filter].
  Future<void> filterEmoji(BuildContext context, String filter) async {
    final isSearching = filter.isNotEmpty;
    final filteredEmojis = await emojiRepository.findEmoji(filter);

    _streamController.add(
      state.copyWith(
        isSearching: isSearching,
        emojis: filteredEmojis,
        selectedEmojiType: state.selectedEmojiType,
      ),
    );
  }

  void dispose() {
    _streamController.close();
  }
}
