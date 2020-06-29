import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  int _index = 0; // Make sure this is outside build(), otherwise every setState will chage the value back to 0
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
      ),
      body: Center(
        child: Container(child: Text('You tapped the FAB $_index times')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            setState(() {
              _index++;
            }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add), //Change Icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, //Change for different locations
    );
  }
}
