import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../application/navigation/locations.dart';

/// Dashboard page
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Dashboard'),
            ),
            ElevatedButton(
              child: Text('QR Code connect'),
              onPressed: () {
                Beamer.of(context).beamTo(QrConnectLocation());
              },
            ),
            ElevatedButton(
              child: Text('Connectivity Assistant'),
              onPressed: () {
                Beamer.of(context).beamTo(ConnectivityAssistantLocation());
              },
            )
          ],
        ),
      ),
    );
  }
}
