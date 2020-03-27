
import 'package:flutter/material.dart';
import './../HomeTabs/homepage.dart';

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
        
        title: Text('Login with credential',style: TextStyle(color: Colors.black),),
        
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.navigate_next), 
            
            
            onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>HomeScreen()),
                );
            }
            )
        ],
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