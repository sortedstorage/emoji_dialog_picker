# Emoji Dialog Picker
Emoji dialog picker makes it easy to select emojis from any platform.

## Content

- [Installation](#installation)
- [Parameters](#parameters)
- [Usage](#usage)
- [Community Support](#community-support)

## Installation
Add Emoji Dialog Picker to your pubspec.yaml
```yaml
dependencies:
  emoji_dialog_picker: ^1.0.0
```

## Usage

### Import the Package
```dart
import 'package:emoji_dialog_picker/emoji_dialog_picker.dart';
```

### Example
```dart
EmojiButton(
  emojiPickerView: EmojiPickerView(onEmojiSelected: (String emoji) {
    print('Emoji selected: $emoji');
  }),
  child: const Text('Click Me'),
),
```

## Parameters

### EmojiButton
#### Required:
- emojiPickerView -  The [EmojiPickerView](emoji-picker-view) to display in a dialog when the button is tapped.

#### Optional:
- child - The child widget to display in the button
- padding - The padding of the button
- minWidth - The minimum width of the [EmojiPickerView](emoji-picker-view) dialog
- maxWidth - The maximum width of the [EmojiPickerView](emoji-picker-view) dialog
- shape - The shape of the [EmojiPickerView](emoji-picker-view) dialog
- barrierDismissible - If true, the dialog can be dismissed by tapping outside of it

### EmojiPickerView
#### Required:
- onEmojiSelected - Triggers when an emoji is selected.

#### Optional:
- height - Height of [EmojiPickerView](emoji-picker-view)
- width - Width of [EmojiPickerView](emoji-picker-view)
- decoration - Decoration of [EmojiPickerView](emoji-picker-view)
- backgroundColor - Background color of [EmojiPickerView](emoji-picker-view)
- scrollBehavior - Describes how the CustomScrollView and ListView should behave
- header - Widget to display on the header
- hintText - The hint text to display in the search bar.
- searchBarColor - The background color of the search bar.
- searchIconColor - The color of the search icon
- searchShapeBorder - The `ShapeBorder` of the search bar.
- textStyle - The text style of the search bar.
- hintStyle - The text style of the hint text.
- activeColor - The color of the `EmojiType` icon when selected
- inactiveColor - The color of `EmojiType` icon when not selected

## Community Support

If you have any suggestions or issues, feel free to open an [issue](https://github.com/sortedstorage/emoji_dialog_picker/issues).

If you would like to contribute, feel free to create a [PR](https://github.com/sortedstorage/emoji_dialog_picker/pulls).