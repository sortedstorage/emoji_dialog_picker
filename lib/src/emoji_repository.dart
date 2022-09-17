import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'models/models.dart';

class EmojiRepository {
  List<Emoji> emojis = <Emoji>[];

  Future<List<Emoji>> getEmojis(
      BuildContext context, EmojiType emojiType) async {
    final data = await DefaultAssetBundle.of(context)
        .loadString('assets/emojis/${_mapEmojiTypeToEmojiFile(emojiType)}');

    final emojiList = jsonDecode(data) as Map<String, dynamic>;

    return EmojiList.fromJson(
      <String, dynamic>{'emojis': emojiList.values.toList()},
    ).emojis;
  }

  Future<List<Emoji>> findEmoji(String filter) async {
    if (emojis.isEmpty) {
      final data = await rootBundle.loadString('assets/emojis/emojis.json',
          cache: false);
      final emojiList = jsonDecode(data) as Map<String, dynamic>;

      emojis = EmojiList.fromJson(
        <String, dynamic>{'emojis': emojiList.values.toList()},
      ).emojis;
    }

    if (filter.isEmpty) {
      return emojis;
    }

    return emojis
        .where((emoji) => emoji.keywords.contains(filter.toLowerCase()))
        .toList();
  }

  String _mapEmojiTypeToEmojiFile(EmojiType emojiType) {
    switch (emojiType) {
      case EmojiType.activity:
        return 'activity.json';
      case EmojiType.animalsAndNature:
        return 'animals_and_nature.json';
      case EmojiType.flags:
        return 'flags.json';
      case EmojiType.foodAndDrink:
        return 'food_and_drink.json';
      case EmojiType.objects:
        return 'objects.json';
      case EmojiType.people:
        return 'people.json';
      case EmojiType.symbols:
        return 'symbols.json';
      case EmojiType.travelsAndPlaces:
        return 'travel_and_places.json';
    }
  }
}
