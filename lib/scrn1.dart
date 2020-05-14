import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Locker.dart';

 void main() => (MaterialApp(
  home: scrn1(),
 ));

 // ignore: camel_case_types
 class scrn1 extends StatelessWidget{
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
    body: Container(
     color: Colors.blueGrey[900],
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 240),
       child: RaisedButton(
        color: Colors.teal[300],
        splashColor: Colors.white30,
        child: Center(
         child: Text('FAB LOCKER',
          style: TextStyle(
           color: Colors.white70,
           fontSize: 25,
          ),
         ),
        ),
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(35),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        onPressed: () {
         Navigator.push(context, new MaterialPageRoute(builder: (context) => locker()
         ));
        },
       ),
     ),
    ),
    bottomNavigationBar: CurvedNavigationBar(
     backgroundColor: Colors.blueGrey[900],
     buttonBackgroundColor: Colors.teal,
     height: 50,
     items: <Widget>[
      Icon(Icons.storage, size: 30, color: Colors.black),
      Icon(Icons.grid_on, size: 30, color: Colors.black),
      Icon(Icons.home, size: 30, color: Colors.black),
      Icon(Icons.settings, size: 30, color: Colors.black),
      Icon(Icons.people, size: 30, color: Colors.black),
     ],
     animationDuration: Duration(
      milliseconds: 600
     ),
     index: 2,
     animationCurve: Curves.bounceInOut,
     onTap: (index) {
      debugPrint('Current Index is $index');
     },
    ),
   );
  }
 }
