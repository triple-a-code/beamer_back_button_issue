import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../application/navigation/locations.dart';

/// Connectivity assistant page
class ConnectivityAssistantPage extends StatefulWidget {
  @override
  _ConnectivityAssistantPageState createState() => _ConnectivityAssistantPageState();
}

class _ConnectivityAssistantPageState extends State<ConnectivityAssistantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Connectivity assistant'),
            ),
            ElevatedButton(
              child: Text('Dashboard'),
              onPressed: () {
                Beamer.of(context).beamTo(DashboardLocation());
              },
            ),
            ElevatedButton(
              child: Text('QR Code connect'),
              onPressed: () {
                Beamer.of(context).beamTo(QrConnectLocation());
              },
            ),
          ],
        ),
      ),
    );
  }
}
