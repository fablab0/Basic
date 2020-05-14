import 'package:flutter/material.dart';
import 'scrn1.dart';

void main() => runApp(MaterialApp(
  home: Login(),
));

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/login.png',
          fit: BoxFit.cover
          ),
           Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 210, 0),
                child: CircleAvatar(
                  radius: 54,
                  backgroundImage: AssetImage('assets/Fablab.png'),
                ),
              ),
              SizedBox (height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text('Welcome Back!',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 43,
                  ),
                ),
              ),
              SizedBox (height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                  decoration: InputDecoration(
                    //fillColor: Colors.white,
                    //filled: true,
                    labelText: 'Username',
                    hintText: 'Enter username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(600),
                    ),
                  ),
                ),
              ),
              SizedBox (height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextField(
                  obscureText: true ,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              SizedBox (height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 220, 0),
                child: RaisedButton(
                  color: Colors.teal[300],
                  splashColor: Colors.white30,
                  child: Center(
                    child: Text('Log In',
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
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => scrn1()
                    ));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}