
import 'package:badminton2020/UI/Tabs/homepage.dart';
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
        backgroundColor: Colors.green.shade400,
        
        title: Text('Login with credential',style: TextStyle(color: Colors.black),textDirection: TextDirection.ltr),
        
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.send), 
            
            
            onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>welcomescreen()),
                );
            }
            )
        ],
        ),
        
       body:Container(
          child:Center(
            child:Text('LOGIN',textDirection: TextDirection.ltr) ,
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