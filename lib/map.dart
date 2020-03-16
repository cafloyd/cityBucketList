// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController mapController;

  LatLng _center = const LatLng(40.7128, -74.0060);


  // Completer<GoogleMapController>_controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // margin: EdgeInsets.all(10),
      // child: Text(
      //   'Placeholder for map',
      //   style: TextStyle(fontSize: 28),
      //   textAlign: TextAlign.center,
      // ),
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 13.0,
        ),
      ),
    );
  }
}
