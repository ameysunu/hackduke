import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'home.dart';

String quality = "High";
int x = 10;

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  MapType _currentMapType = MapType.normal;
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAsset('images/marker.bmp');
  }

  @override
  Widget build(BuildContext context) {
    LatLng pinPosition = LatLng(36.00104441624884, -78.93925997353665);
    CameraPosition initialLocation =
        CameraPosition(zoom: 15, bearing: 30, target: pinPosition);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: HexColor('#FF9D6A'),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          locationController.text,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Risk Assesment: $quality",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Currently, there are $x people at this site. Of these $x people, [a] have tested positive for covid, [b + c] have experienced symptoms of covid, and [d + e] have come into contact with people diagnosed with and/or exhibiting symptoms of covid. In the last 14 days, [a’] people diagnosed with covid have visited this site. ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: GoogleMap(
                      initialCameraPosition: initialLocation,
                      mapType: _currentMapType,
                      myLocationEnabled: true,
                      markers: _markers,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                        setState(() {
                          _markers.add(Marker(
                              markerId: MarkerId("Test Location 1"),
                              position: pinPosition,
                              infoWindow: InfoWindow(
                                title: "Test Location 1",
                                snippet: 'Test',
                              ),
                              icon: pinLocationIcon));
                        });
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: HexColor('#C4515B'),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Similar Locations",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto Medium",
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SimilarLocations()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimilarLocations extends StatefulWidget {
  @override
  _SimilarLocationsState createState() => _SimilarLocationsState();
}

class _SimilarLocationsState extends State<SimilarLocations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Locations similar to ${locationController.text}"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shooters",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "High",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cosmic Cantina",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "High",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Blue Corn Cafe",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Medium",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food Lion",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Low",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
