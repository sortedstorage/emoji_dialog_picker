// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Emoji _$$_EmojiFromJson(Map<String, dynamic> json) => _$_Emoji(
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      emoji: json['char'] as String,
      fitzpatrickScale: json['fitzpatrick_scale'] as bool,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_EmojiToJson(_$_Emoji instance) => <String, dynamic>{
      'keywords': instance.keywords,
      'char': instance.emoji,
      'fitzpatrick_scale': instance.fitzpatrickScale,
      'category': instance.category,
    };
