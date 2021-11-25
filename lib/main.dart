import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:revive/app/app.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';

void main() {
  runApp(ReviveApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center =
      const LatLng(26.45668540619984, 80.31915466243886);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  polylines: {
                    Polyline(
                      polylineId: PolylineId("pos"),
                      points: [
                        LatLng(26.45668540619984, 80.31915466243886),
                        LatLng(26.49912843907918, 80.27351931872253),
                        LatLng(26.49972051890553, 80.27098378541703),
                      ],
                    ),
                  },
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
              CuastAppBar(),
            ],
          ),
        );
      },
    );
  }
}

class CuastAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CuastAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: this.preferredSize.height * 0.6, left: 12, right: 12),
      child: Row(
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
          ),
          Container(
            child: Text("Tap to search"),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
