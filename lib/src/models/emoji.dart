import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

@freezed
class Emoji with _$Emoji {
  factory Emoji({
    required final List<String> keywords,
    @JsonKey(name: 'char') required final String emoji,
    @JsonKey(name: 'fitzpatrick_scale') required final bool fitzpatrickScale,
    required final String category,
  }) = _Emoji;

  factory Emoji.fromJson(Map<String, dynamic> json) => _$EmojiFromJson(json);
}
