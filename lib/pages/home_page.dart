import 'package:acmilan_app/responsive/responsive_layout.dart';
import 'package:acmilan_app/responsive/mobile_scaffold.dart';
import 'package:acmilan_app/responsive/tablet_scaffold.dart';
import 'package:acmilan_app/responsive/desktop_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: const MobileScaffold(),
      tabletScaffold: const TabletScaffold(),
      desktopScaffold: const DesktopScaffold(),
    );
  }
}
