import 'package:flutter/material.dart';

void main() => runApp(Example());

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Business Types'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Cars'),
            ),
            ListTile(
              title: Text('Properties'),
            ),
            ListTile(
              title: Text('Mobiles'),
            ),
            ListTile(
              title: Text('Fasition'),
            ),
            ListTile(
              title: Text('Bikes'),
            ),
            ListTile(
              title: Text('Watches'),
            ),
            ListTile(
              title: Text('Shoes'),
            ),
          ],
        ),
      ),
    );
  }
}
