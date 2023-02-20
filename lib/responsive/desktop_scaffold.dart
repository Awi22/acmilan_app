import 'package:acmilan_app/components/constants.dart';
import 'package:acmilan_app/components/my_box.dart';
import 'package:acmilan_app/components/my_tile.dart';
import 'package:acmilan_app/pages/login_page.dart';
import 'package:acmilan_app/pages/settings.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          Drawer(
            backgroundColor: Colors.grey[300],
            child: Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'images/logo.png',
                  height: 70,
                  width: 70,
                )),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('D A S H B O A R D'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const DesktopScaffold();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people_alt),
                  title: const Text('S Q U A D'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('S E T T I N G S'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Settings();
                    }));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('L O G O U T'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                ),
              ],
            ),
          ),
          // rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "S H O P",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                const Text(
                  "S C H E D U L E",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // tiles below it
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
