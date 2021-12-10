import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:revive/models/models.dart';
import 'package:revive/pages/charging_station_info_page/charging_station_info_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(26.502154119336115, 80.27229827415383);

  static const chargingPoints = [
    LatLng(26.501950503932893, 80.27276469837355),
    LatLng(26.50175706896563, 80.27314238822954),
    LatLng(26.50169598417149, 80.2732902788358),
    LatLng(26.50149847644816, 80.2727396707325),
    LatLng(26.50133089691733, 80.27195709260225),
  ];

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      markers: chargingPoints
          .map(
            (e) => Marker(
                markerId: MarkerId("${e.latitude}"),
                position: e,
                onTap: () {
                  ChargingPoint chargingPoint = ChargingPoint(
                      name: "Name",
                      location: ChargingPointLocation(
                          latitude: chargingPoints.first.latitude,
                          longitude: chargingPoints.first.longitude,
                          address: "House 39, Kidwai Nagar, Kanpur"),
                      availableSlot: 3,
                      isOpen: true);

                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      builder: (ctx) {
                        return ChargingStationInfoPage(
                          chargingPoint: chargingPoint,
                        );
                      });
                }),
          )
          .toSet(),
      initialCameraPosition: const CameraPosition(
        target: _center,
        tilt: 15.0,
        zoom: 17.0,
      ),
      compassEnabled: false,
      mapToolbarEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
