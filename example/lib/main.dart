// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:emoji_dialog_picker/emoji_dialog_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: EmojiButton(
            emojiPickerView: EmojiPickerView(onEmojiSelected: (String emoji) {
              print('Emoji selected: $emoji');
            }),
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
