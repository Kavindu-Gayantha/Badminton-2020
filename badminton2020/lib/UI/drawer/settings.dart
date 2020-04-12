import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import './../appbar/appbar.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: Text('settings'),
          backgroundColor:Colors.green.shade500,
          actions: <Widget>[
            

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.save),
            ),
            

          ],
        ),
        body:Center(child: Text('this is body of cettings'),),
        
        
      
    );
  }
}