//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Login.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/welcome.png',
          fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 210, 0),
              child: CircleAvatar(
              radius: 54.0,
              backgroundImage: AssetImage('assets/Fablab.png'),
                  ),
            ),
              SizedBox(height:15),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text('Welcome!',
                style: TextStyle(
                  fontSize: 50,
                  //fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 118),
                child: Text('Begin your journey',
                  style: TextStyle(
                    fontSize: 25,
                    //fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox (height: 30),
                  Container(
                    child: Row(
                      children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: RaisedButton(
                            color: Colors.teal[300],
                            splashColor: Colors.white30,
                            child: Center(
                              child: Text('Log In',
                                style: TextStyle(
                                  color: Colors.blueGrey[900],
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(builder: (context) => Login()
                              ));
                            },
                          ),
                      ),
                        SizedBox (width: 30),
                        Container(
                          child: RaisedButton(
                            color: Colors.teal[300],
                            splashColor: Colors.white30,
                            child: Center(
                              child: Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               ],
          ),
    );
  }
}

