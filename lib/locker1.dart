import 'package:flutter/material.dart';

class locker1 extends StatefulWidget {
  @override
  _locker1State createState() => _locker1State();
}

class _locker1State extends State<locker1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('FAB APP',
          style: TextStyle(
            color: Colors.teal,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'background',
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueGrey[900], Colors.teal],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
