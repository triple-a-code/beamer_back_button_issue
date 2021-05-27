import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'application/navigation/locations.dart';

void main() {
  runApp(MyApp());
}

/// Example app
class MyApp extends StatelessWidget {
  final _routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        DashboardLocation(),
        ConnectivityAssistantLocation(),
        QrConnectLocation(),
      ],
    ),
  );
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      routerDelegate: _routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: _routerDelegate),
    );
  }
}
