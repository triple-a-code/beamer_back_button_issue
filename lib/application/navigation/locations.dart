import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../../presentation/pages/connectivity_assistant.dart';
import '../../presentation/pages/dashboard_page.dart';
import '../../presentation/pages/qr_connect_page.dart';

/// Configuration for navigatable connectivity assistant location
/// Responsible for
///   * knowing which URIs it can handle: [pathBlueprints]
///   * knowing how to build a stack of pages: [buildPages]
///   * keeping a [state] that provides the link between the first 2
///
class ConnectivityAssistantLocation extends BeamLocation {
  /// creates a new [ConnectivityAssistantLocation] with optional initial [state]
  ConnectivityAssistantLocation([BeamState? state]) : super(state);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: ValueKey('connect'),
          child: ConnectivityAssistantPage(),
        ),
      ];

  @override
  List<String> get pathBlueprints => ['/connect'];
}

/// Configuration for navigatable QR Scanner location
/// Responsible for
///   * knowing which URIs it can handle: [pathBlueprints]
///   * knowing how to build a stack of pages: [buildPages]
///   * keeping a [state] that provides the link between the first 2
///
class QrConnectLocation extends BeamLocation {
  /// creates a new [QrConnectLocation] with optional initial [state]
  QrConnectLocation([BeamState? state]) : super(state);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) =>
      [BeamPage(key: ValueKey('qrconnect'), child: QrConnectPage())];

  @override
  List<String> get pathBlueprints => ['/qrconnect'];
}

/// Configuration for navigatable dashboard location
/// Responsible for
///   * knowing which URIs it can handle: [pathBlueprints]
///   * knowing how to build a stack of pages: [buildPages]
///   * keeping a [state] that provides the link between the first 2
///
class DashboardLocation extends BeamLocation {
  /// creates a new [DashboardLocation] with optional initial [state]
  DashboardLocation([BeamState? state]) : super(state);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: ValueKey('dashboard'),
          child: DashboardPage(),
          type: BeamPageType.fadeTransition,
        ),
      ];

  @override
  List<String> get pathBlueprints => ['/', '/home'];
}
