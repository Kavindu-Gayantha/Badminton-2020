
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Login with credential'),
        ),
        body:Container(
          child:Center(
            child:Text('LOGIN') ,
            ) 
          ),
     


      // child: Center(
      //   child: Center(
      //     child:Text('secondpage',textDirection: TextDirection.ltr,),
      //   ),
      // ),
    );
  }
}