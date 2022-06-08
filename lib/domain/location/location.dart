import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  // close_hour: 22:00,
  // address: Jl. A. H. Nasution,
  // name: Parkiran Saintek,
  // lon: 107.71779339328984,
  // open_hour: 04:00,
  // lat: -6.930301342513141
  const factory Location({
    @JsonKey(ignore: true) final String? id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'lat') required final String lat,
    @JsonKey(name: 'lon') required final String lon,
    @JsonKey(name: 'open_hour') required final String openHour,
    @JsonKey(name: 'close_hour') required final String closeHour,
  }) = _Location;

  const Location._();

  Location toDomain() {
    return Location(
      name: name,
      address: address,
      lat: lat,
      lon: lon,
      openHour: openHour,
      closeHour: closeHour,
    );
  }

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  factory Location.fromFirebase(DocumentSnapshot doc) {
    return Location.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory Location.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return Location.fromJson(doc.data()!).copyWith(id: doc.id);
  }
}
