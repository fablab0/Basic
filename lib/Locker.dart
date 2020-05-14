import 'package:flutter/material.dart';

import 'locker1.dart';

void main() => (MaterialApp(
  home: locker(),
));

// ignore: camel_case_types
class locker extends StatelessWidget {

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Locker', style: TextStyle(color: Colors.blueGrey[900], fontSize: 40, fontWeight: FontWeight.bold) ),
                    TextSpan(text: '\n'),
                    TextSpan(text: 'Choose your locker', style: TextStyle(color: Colors.blueGrey[900], fontSize: 20)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CharacterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Stack(
      children:[Align(
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: 0.55 * screenHeight,
            width: 0.9 * screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey[900], Colors.blueGrey],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    ],
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  // ignore: missing_return
  Path getClip(Size size) {
   Path clippedPath = Path();
   double curveDistance = 40;

   return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return true;
  }

}

