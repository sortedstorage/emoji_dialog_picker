import 'package:freezed_annotation/freezed_annotation.dart';

import 'emoji.dart';

part 'emoji_list.freezed.dart';
part 'emoji_list.g.dart';

@freezed
class EmojiList with _$EmojiList {
  factory EmojiList(final List<Emoji> emojis) = _EmojiList;

  factory EmojiList.fromJson(Map<String, dynamic> json) =>
      _$EmojiListFromJson(json);
}
