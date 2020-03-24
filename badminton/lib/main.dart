import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stateless widget',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(700, 880, 800, 800),
          title: Text('Badminton'),
          leading: IconButton(icon: Icon(Icons.favorite), onPressed: null),
        ),
        
        body: Container(
          color:Colors.green,
          child:Center(
            // Text('welcome to badminton attendance marking app'),
           child:Text('Welcome to Badminton attendance marking App')
           ),
              
        ),
      ),
          
    );      
   
  }
}