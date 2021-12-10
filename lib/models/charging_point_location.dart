import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargingPointLocation extends LatLng {
  final String address;

  ChargingPointLocation({
    required double latitude,
    required double longitude,
    required this.address,
  }) : super(latitude, longitude);

  ChargingPointLocation copyWith({
    double? latitude,
    double? longitude,
    String? address,
  }) {
    return ChargingPointLocation(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
    };
    
  }

  factory ChargingPointLocation.fromMap(Map<String, dynamic> map) {
    return ChargingPointLocation(
      latitude: map['latitude'],
      longitude: map['longitude'],
      address: map['address'],
    );
  }

  @override
  String toString() =>
      'ChargingPointLocation(latitude: $latitude, longitude: $longitude, address: $address)';
}
