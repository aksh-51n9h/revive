import 'package:flutter/material.dart';
import 'package:revive/models/charging_point.dart';

class ChargingStationInfoPage extends StatefulWidget {
  const ChargingStationInfoPage({Key? key, required this.chargingPoint})
      : super(key: key);

  final ChargingPoint chargingPoint;

  @override
  _ChargingStationInfoPageState createState() =>
      _ChargingStationInfoPageState();
}

class _ChargingStationInfoPageState extends State<ChargingStationInfoPage> {
  ChargingPoint get chargingPoint => widget.chargingPoint;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(
            Icons.local_gas_station_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
          title: Text(chargingPoint.name),
          subtitle: Text(chargingPoint.location.address),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Directions"),
                icon: const Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ],
    );
  }
}
