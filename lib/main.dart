import 'package:flutter/material.dart';
import 'package:geolocate/views/HomePageView.dart';
import 'package:geolocate/views/LoginView.dart';
import 'package:geolocate/views/MapView.dart';
// import 'views/MyAppView.dart';r

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Geolocate'),
      routes: {
        "login/": (context) => const LoginView(),
        "map/": (context) => const MapView()
      },
    );
  }
}



