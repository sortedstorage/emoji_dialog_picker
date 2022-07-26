// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmojiList _$$_EmojiListFromJson(Map<String, dynamic> json) => _$_EmojiList(
      (json['emojis'] as List<dynamic>)
          .map((e) => Emoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmojiListToJson(_$_EmojiList instance) =>
    <String, dynamic>{
      'emojis': instance.emojis,
    };
