import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery.freezed.dart';
part 'gallery.g.dart';

@freezed
class Gallery with _$Gallery {
  const factory Gallery({
    @JsonKey(ignore: true) final String? id,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'caption') required final String caption,
  }) = _Gallery;

  const Gallery._();

  Gallery toDomain() {
    return Gallery(
      imageUrl: imageUrl,
      caption: caption,
    );
  }

  factory Gallery.fromJson(Map<String, dynamic> json) =>
      _$GalleryFromJson(json);

  factory Gallery.fromFirebase(DocumentSnapshot doc) {
    return Gallery.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory Gallery.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return Gallery.fromJson(doc.data()!).copyWith(id: doc.id);
  }
}
