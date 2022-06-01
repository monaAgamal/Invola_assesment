import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  final Position position;

  const MapPage({
    Key? key,
    required this.position,
  }) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late final Completer<GoogleMapController> _mapController;
  late LatLng courseLocation;

  @override
  void initState() {
    super.initState();
    courseLocation =
        LatLng(widget.position.latitude, widget.position.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          zoom: 11,
          target: courseLocation,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("id"),
            position: courseLocation,
            icon: BitmapDescriptor.defaultMarker,
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          _mapController.complete(controller);
        },
      ),
    );
  }
}
