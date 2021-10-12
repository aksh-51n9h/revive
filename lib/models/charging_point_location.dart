import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargingPointLocation extends LatLng {
  final double latitude;
  final double longitude;

  ChargingPointLocation({
    required this.latitude,
    required this.longitude,
  }) : super(latitude, longitude);

  ChargingPointLocation copyWith({
    double? latitude,
    double? longitude,
  }) {
    return ChargingPointLocation(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory ChargingPointLocation.fromMap(Map<String, dynamic> map) {
    return ChargingPointLocation(
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  @override
  String toString() =>
      'ChargingPointLocation(latitude: $latitude, longitude: $longitude)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChargingPointLocation &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
