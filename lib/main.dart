import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  // String filename = 'images/ball1.png';
  String _base = 'images/ball';
  int _number = 1;
  String _fileEx = '.png';

  String _getName() {
    return this._base + this._number.toString() + this._fileEx;
  }

  int _getNumber() => (Random().nextInt(5) + 1);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image(
          image: AssetImage(this._getName()),
        ),
        onPressed: () {
          setState(() {
            this._number = _getNumber();
            // print('I got clicked--Result:${this.number}');
          });
        },
      ),
    );
  }
}
