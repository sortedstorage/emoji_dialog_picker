import '../models/models.dart';

class EmojiPickerState {
  const EmojiPickerState({
    required this.isSearching,
    required this.emojis,
    required this.selectedEmojiType,
  });

  /// Wheter the user is searching for emojis or not.
  final bool isSearching;

  /// The list of emojis.
  final List<Emoji>? emojis;

  /// The [EmojiType] selected by the user.
  final EmojiType selectedEmojiType;

  EmojiPickerState copyWith({
    bool? isSearching,
    List<Emoji>? emojis,
    EmojiType? selectedEmojiType,
  }) {
    return EmojiPickerState(
      isSearching: isSearching ?? this.isSearching,
      emojis: emojis ?? this.emojis,
      selectedEmojiType: selectedEmojiType ?? this.selectedEmojiType,
    );
  }
}
