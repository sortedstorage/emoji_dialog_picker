// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emoji_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmojiList _$EmojiListFromJson(Map<String, dynamic> json) {
  return _EmojiList.fromJson(json);
}

/// @nodoc
mixin _$EmojiList {
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiListCopyWith<EmojiList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiListCopyWith<$Res> {
  factory $EmojiListCopyWith(EmojiList value, $Res Function(EmojiList) then) =
      _$EmojiListCopyWithImpl<$Res>;
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class _$EmojiListCopyWithImpl<$Res> implements $EmojiListCopyWith<$Res> {
  _$EmojiListCopyWithImpl(this._value, this._then);

  final EmojiList _value;
  // ignore: unused_field
  final $Res Function(EmojiList) _then;

  @override
  $Res call({
    Object? emojis = freezed,
  }) {
    return _then(_value.copyWith(
      emojis: emojis == freezed
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmojiListCopyWith<$Res> implements $EmojiListCopyWith<$Res> {
  factory _$$_EmojiListCopyWith(
          _$_EmojiList value, $Res Function(_$_EmojiList) then) =
      __$$_EmojiListCopyWithImpl<$Res>;
  @override
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class __$$_EmojiListCopyWithImpl<$Res> extends _$EmojiListCopyWithImpl<$Res>
    implements _$$_EmojiListCopyWith<$Res> {
  __$$_EmojiListCopyWithImpl(
      _$_EmojiList _value, $Res Function(_$_EmojiList) _then)
      : super(_value, (v) => _then(v as _$_EmojiList));

  @override
  _$_EmojiList get _value => super._value as _$_EmojiList;

  @override
  $Res call({
    Object? emojis = freezed,
  }) {
    return _then(_$_EmojiList(
      emojis == freezed
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmojiList implements _EmojiList {
  _$_EmojiList(final List<Emoji> emojis) : _emojis = emojis;

  factory _$_EmojiList.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiListFromJson(json);

  final List<Emoji> _emojis;
  @override
  List<Emoji> get emojis {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  @override
  String toString() {
    return 'EmojiList(emojis: $emojis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmojiList &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  _$$_EmojiListCopyWith<_$_EmojiList> get copyWith =>
      __$$_EmojiListCopyWithImpl<_$_EmojiList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiListToJson(
      this,
    );
  }
}

abstract class _EmojiList implements EmojiList {
  factory _EmojiList(final List<Emoji> emojis) = _$_EmojiList;

  factory _EmojiList.fromJson(Map<String, dynamic> json) =
      _$_EmojiList.fromJson;

  @override
  List<Emoji> get emojis;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiListCopyWith<_$_EmojiList> get copyWith =>
      throw _privateConstructorUsedError;
}
