import 'dart:ui';

import 'package:badminton2020/UI/Tabs/TabBoys/tabBoys.dart';
import 'package:badminton2020/UI/Tabs/TabGirls/tabGirls.dart';
import 'package:badminton2020/UI/Tabs/contactlist/modal/contact.dart';
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
          title: Text('Manage Players'),
          backgroundColor:Colors.deepPurpleAccent,
          actions: <Widget>[
            

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.save),
            ),
            

          ],
        ),
        body:Padding(
          padding:EdgeInsets.all(10) ,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'ADMIN PANEL',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w800,
                    fontSize: 35

                  ),

                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Add new player',
                      ),
                    ),
                  
                  ),
                  RaisedButton(
                    onPressed: null,
                    child:Text('ADD'),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(16,13))),
                    color: Colors.green,
                    elevation: 6,
                  )
                ],
              ),
              Container(alignment: Alignment.center,
              ),
             
            ],
          ),

          
                  
        ),
                
                
      
            
          );
        
        
      
   
  }
}