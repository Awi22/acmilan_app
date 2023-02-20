import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Serie A',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Matchday 24',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '27 February 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '03:45',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'VS',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/atalanta.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
