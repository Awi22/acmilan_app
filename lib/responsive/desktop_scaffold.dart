import 'package:acmilan_app/components/constants.dart';
import 'package:acmilan_app/components/my_box.dart';
import 'package:acmilan_app/components/my_tile.dart';
import 'package:acmilan_app/pages/login_page.dart';
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
                  leading: Icon(Icons.settings),
                  title: Text('S E T T I N G S'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
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
