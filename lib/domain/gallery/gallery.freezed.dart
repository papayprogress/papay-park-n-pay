// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gallery _$GalleryFromJson(Map<String, dynamic> json) {
  return _Gallery.fromJson(json);
}

/// @nodoc
mixin _$Gallery {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryCopyWith<Gallery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryCopyWith<$Res> {
  factory $GalleryCopyWith(Gallery value, $Res Function(Gallery) then) =
      _$GalleryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'caption') String caption});
}

/// @nodoc
class _$GalleryCopyWithImpl<$Res> implements $GalleryCopyWith<$Res> {
  _$GalleryCopyWithImpl(this._value, this._then);

  final Gallery _value;
  // ignore: unused_field
  final $Res Function(Gallery) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GalleryCopyWith<$Res> implements $GalleryCopyWith<$Res> {
  factory _$$_GalleryCopyWith(
          _$_Gallery value, $Res Function(_$_Gallery) then) =
      __$$_GalleryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'caption') String caption});
}

/// @nodoc
class __$$_GalleryCopyWithImpl<$Res> extends _$GalleryCopyWithImpl<$Res>
    implements _$$_GalleryCopyWith<$Res> {
  __$$_GalleryCopyWithImpl(_$_Gallery _value, $Res Function(_$_Gallery) _then)
      : super(_value, (v) => _then(v as _$_Gallery));

  @override
  _$_Gallery get _value => super._value as _$_Gallery;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? caption = freezed,
  }) {
    return _then(_$_Gallery(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gallery extends _Gallery {
  const _$_Gallery(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'caption') required this.caption})
      : super._();

  factory _$_Gallery.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'caption')
  final String caption;

  @override
  String toString() {
    return 'Gallery(id: $id, imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gallery &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.caption, caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(caption));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryCopyWith<_$_Gallery> get copyWith =>
      __$$_GalleryCopyWithImpl<_$_Gallery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryToJson(this);
  }
}

abstract class _Gallery extends Gallery {
  const factory _Gallery(
      {@JsonKey(ignore: true) final String? id,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'caption') required final String caption}) = _$_Gallery;
  const _Gallery._() : super._();

  factory _Gallery.fromJson(Map<String, dynamic> json) = _$_Gallery.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'caption')
  String get caption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryCopyWith<_$_Gallery> get copyWith =>
      throw _privateConstructorUsedError;
}
