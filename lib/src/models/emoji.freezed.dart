// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emoji _$EmojiFromJson(Map<String, dynamic> json) {
  return _Emoji.fromJson(json);
}

/// @nodoc
mixin _$Emoji {
  List<String> get keywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'char')
  String get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: 'fitzpatrick_scale')
  bool get fitzpatrickScale => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiCopyWith<Emoji> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) then) =
      _$EmojiCopyWithImpl<$Res>;
  $Res call(
      {List<String> keywords,
      @JsonKey(name: 'char') String emoji,
      @JsonKey(name: 'fitzpatrick_scale') bool fitzpatrickScale,
      String category});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res> implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._value, this._then);

  final Emoji _value;
  // ignore: unused_field
  final $Res Function(Emoji) _then;

  @override
  $Res call({
    Object? keywords = freezed,
    Object? emoji = freezed,
    Object? fitzpatrickScale = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      fitzpatrickScale: fitzpatrickScale == freezed
          ? _value.fitzpatrickScale
          : fitzpatrickScale // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmojiCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$$_EmojiCopyWith(_$_Emoji value, $Res Function(_$_Emoji) then) =
      __$$_EmojiCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> keywords,
      @JsonKey(name: 'char') String emoji,
      @JsonKey(name: 'fitzpatrick_scale') bool fitzpatrickScale,
      String category});
}

/// @nodoc
class __$$_EmojiCopyWithImpl<$Res> extends _$EmojiCopyWithImpl<$Res>
    implements _$$_EmojiCopyWith<$Res> {
  __$$_EmojiCopyWithImpl(_$_Emoji _value, $Res Function(_$_Emoji) _then)
      : super(_value, (v) => _then(v as _$_Emoji));

  @override
  _$_Emoji get _value => super._value as _$_Emoji;

  @override
  $Res call({
    Object? keywords = freezed,
    Object? emoji = freezed,
    Object? fitzpatrickScale = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Emoji(
      keywords: keywords == freezed
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      fitzpatrickScale: fitzpatrickScale == freezed
          ? _value.fitzpatrickScale
          : fitzpatrickScale // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Emoji implements _Emoji {
  _$_Emoji(
      {required final List<String> keywords,
      @JsonKey(name: 'char') required this.emoji,
      @JsonKey(name: 'fitzpatrick_scale') required this.fitzpatrickScale,
      required this.category})
      : _keywords = keywords;

  factory _$_Emoji.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiFromJson(json);

  final List<String> _keywords;
  @override
  List<String> get keywords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  @JsonKey(name: 'char')
  final String emoji;
  @override
  @JsonKey(name: 'fitzpatrick_scale')
  final bool fitzpatrickScale;
  @override
  final String category;

  @override
  String toString() {
    return 'Emoji(keywords: $keywords, emoji: $emoji, fitzpatrickScale: $fitzpatrickScale, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emoji &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality().equals(other.emoji, emoji) &&
            const DeepCollectionEquality()
                .equals(other.fitzpatrickScale, fitzpatrickScale) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keywords),
      const DeepCollectionEquality().hash(emoji),
      const DeepCollectionEquality().hash(fitzpatrickScale),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      __$$_EmojiCopyWithImpl<_$_Emoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiToJson(
      this,
    );
  }
}

abstract class _Emoji implements Emoji {
  factory _Emoji(
      {required final List<String> keywords,
      @JsonKey(name: 'char') required final String emoji,
      @JsonKey(name: 'fitzpatrick_scale') required final bool fitzpatrickScale,
      required final String category}) = _$_Emoji;

  factory _Emoji.fromJson(Map<String, dynamic> json) = _$_Emoji.fromJson;

  @override
  List<String> get keywords;
  @override
  @JsonKey(name: 'char')
  String get emoji;
  @override
  @JsonKey(name: 'fitzpatrick_scale')
  bool get fitzpatrickScale;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      throw _privateConstructorUsedError;
}
