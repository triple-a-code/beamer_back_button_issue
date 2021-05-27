import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../application/navigation/locations.dart';

/// QR Scanner page
class QrConnectPage extends StatefulWidget {
  @override
  _QrConnectPageState createState() => _QrConnectPageState();
}

class _QrConnectPageState extends State<QrConnectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('QR Connect'),
            ),
            ElevatedButton(
              child: Text('Dashboard'),
              onPressed: () {
                Beamer.of(context).beamTo(DashboardLocation());
              },
            )
          ],
        ),
      ),
    );
  }
}
