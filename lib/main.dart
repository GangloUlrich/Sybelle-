import 'package:flutter/material.dart';
import 'dart:async';

import 'signup.dart';
import 'layout.dart';
import 'login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/layout': (BuildContext context) => new LayoutPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    @override
    void initState(){
        super.initState();

        _mockCheckforSession().then(
            (status) {
                if(status) {
                    _navigateToLogin();
                }else{
                    _navigateToLogin();
                }
            }
        );
    }

    Future<bool> _mockCheckforSession() async {
        await Future.delayed(Duration(milliseconds: 5000), () {});
        return true;
    }

    void _navigateToLogin(){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (BuildContext context) => LoginPage()
            )

        );
    }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                    Image.asset('assets/images/uacjobs.png'),
                    Center(
                        child: Text('Bienvenue sur la plateforme \n du monde professionnel béninois', 
                        style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Montserrat')),
                    ),

                ],

            ),

        ),
    );
  }
}
  