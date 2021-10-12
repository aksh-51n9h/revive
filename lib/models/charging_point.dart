import 'package:equatable/equatable.dart';
import 'package:revive/models/charging_point_location.dart';

class ChargingPoint extends Equatable {
  final String name;
  final ChargingPointLocation location;
  final int availableSlot;
  final bool isOpen;
  ChargingPoint({
    required this.name,
    required this.location,
    required this.availableSlot,
    required this.isOpen,
  });

  ChargingPoint copyWith({
    String? name,
    ChargingPointLocation? location,
    int? availableSlot,
    bool? isOpen,
  }) {
    return ChargingPoint(
      name: name ?? this.name,
      location: location ?? this.location,
      availableSlot: availableSlot ?? this.availableSlot,
      isOpen: isOpen ?? this.isOpen,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location.toMap(),
      'availableSlot': availableSlot,
      'isOpen': isOpen,
    };
  }

  factory ChargingPoint.fromMap(Map<String, dynamic> map) {
    return ChargingPoint(
      name: map['name'],
      location: ChargingPointLocation.fromMap(map['location']),
      availableSlot: map['availableSlot'],
      isOpen: map['isOpen'],
    );
  }

  @override
  String toString() {
    return 'ChargingPoint(name: $name, location: $location, availableSlot: $availableSlot, isOpen: $isOpen)';
  }

  @override
  List<Object?> get props => [name, location, availableSlot, isOpen];
}
