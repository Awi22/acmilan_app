import 'package:acmilan_app/pages/login_page.dart';
import 'package:acmilan_app/pages/settings.dart';
import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  title: Image.asset(
    'images/logo.png',
    height: 48,
    width: 48,
  ),
  centerTitle: true,
  backgroundColor: Colors.grey[900],
);

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.sports_soccer)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('M E S S A G E'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('S E T T I N G S'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Settings();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('L O G O U T'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
