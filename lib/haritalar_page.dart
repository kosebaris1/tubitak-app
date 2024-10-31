import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class HaritaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Harita Sayfası',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(37.7648, 30.5567),
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.tubitak_app', // Kullanıcı agent için örnek bir ad
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7648, 30.5567),
                builder: (ctx) => Container(
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7699, 30.5577),
                builder: (ctx) => Container(
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7600, 30.5520),
                builder: (ctx) => Container(
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7601, 30.5599),
                builder: (ctx) => Container(
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.7751, 30.5500),
                builder: (ctx) => Container(
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
