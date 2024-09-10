import 'package:apis_with_serverpod_client/apis_with_serverpod_client.dart';
import 'package:apis_with_serverpod_flutter/weather_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://$localhost:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: WeatherView());
  }
}
