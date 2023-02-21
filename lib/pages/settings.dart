import 'package:acmilan_app/components/constants.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notifOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Notifications',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Switch(
                        value: notifOn,
                        onChanged: (bool value) {
                          setState(() {
                            notifOn = value;
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(notifOn
                                  ? 'Notifications On'
                                  : 'Notifications Off'),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Languange',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Share Your Feedback',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Rate This App',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Term Of Use',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
