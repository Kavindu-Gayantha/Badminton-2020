

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
          Opacity(
            
          child: Center(
            child: new Image.asset(
              'assets/images/welcomescreen.jpg',
              width:size.width,
              height:size.height,
              fit:BoxFit.fill,
            ),
          ), opacity: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text("WELCOME UOK BADMINTON",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'bold',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(1, 250, 83,1),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(16.0,13.0))),
                    elevation: 5,
                    textColor: Colors.black,
                    textTheme: ButtonTextTheme.primary,
                    
                    color: Colors.green,
                      
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
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(16.0,13.0))),
                   elevation: 5,
                   textColor: Colors.white,
                   color: Colors.red,
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
      
    
 