

// import 'dart:io';

// import 'package:badminton2020/UI/LoginScreen/login.dart';
import 'package:badminton2020/UI/Tabs/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/welcomescreen.jpg',
              width:size.width,
              height:size.height,
              fit:BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text("WELCOME UOK BADMINTON",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  color: Colors.white
                ),
                ),
            ),
          ),
          Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: RaisedButton(
                    
                    onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> welcomescreen()));
                    } ,
                    child: Text('go to APP'),
                  ),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: (){
                    //close
                  },
                  child: Text('close app'),
                ),
              )
            ],
            
          ),
         
          // Center(
          //   child: RaisedButton(
              
          //     onPressed: (){
          //       Navigator.push(context,
          //         MaterialPageRoute(builder: (context)=> welcomescreen()))
          //     },
              
              
          //   ),
          // )
        ],
        
      ),
      
    );



  }
  }
      // title: Text('badminton'),
    
      
        // body: DecoratedBox(
        //   position: DecorationPosition.background,
        //   decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/badminton.jpg"),
        //     fit: BoxFit.cover)
        // ),
        
      // child: Scaffold(
    //     body:new Column( 
          
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisSize: MainAxisSize.max,
    //     mainAxisAlignment: MainAxisAlignment.center,
        
    //     children: <Widget>[
    //       // Decoration(BoxDecoration),
    //       Text('Welcome',textDirection: TextDirection.ltr,),
    //       Text('To',textDirection: TextDirection.ltr),
    //       Text('UOK BADMINTON-2020',textDirection: TextDirection.ltr),
    //       Text('Attendance marking APP',textDirection: TextDirection.ltr),
    //       RaisedButton(
    //         onPressed: (){
    //           Navigator.push(context, 
    //             MaterialPageRoute(builder: (context) => welcomescreen()),
    //           );
    //         },
    //         child:Text('GO to APP'),
    //         textTheme: ButtonTextTheme.accent,
    //         textColor: Colors.blue,
            
    //         ),
            
          
    //       Text('or'),
    //       RaisedButton(
    //         onPressed:null,
    //         child: Text('CLOSE APP'),
    //         textColor: Colors.redAccent,
    //       )
         
    //     ],
    //   ),
    //   ),
    // // ),
    // // ),
    // );
      
    
 