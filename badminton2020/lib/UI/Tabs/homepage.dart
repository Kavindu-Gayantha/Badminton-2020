
//this screen is hangling all the tabs

// import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';

import 'package:badminton2020/UI/LoginScreen/login.dart';
import 'package:badminton2020/UI/Tabs/TabBoys/tabBoys.dart';
// import 'package:badminton2020/UI/Tabs/TabGirls/tabBoys.dart';
import 'package:badminton2020/UI/Tabs/TabGirls/tabGirls.dart';
// import './/TabHome/tabhome.dart';
import 'package:badminton2020/UI/Tabs/TabNotification/tabnotification.dart';
import 'package:badminton2020/UI/Tabs/TabStats/tabstats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './../drawer/settings.dart';
import './../drawer/sms.dart';
// import './../placeholder_widget.dart';


class welcomescreen extends StatefulWidget {
  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
   int _currentIndex = 0;

  int _currentTab=0;
  PageController  _pageController;

  @override
  void initState(){
    super.initState();
    _pageController  =  PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('UOK BADMINTON',textDirection: TextDirection.ltr),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      drawer: 
      Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader( 
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                  image: AssetImage("assets/images/feather-shuttle.jpg"),
                  fit: BoxFit.cover
                )
                
                ),

                
              child: Text('Login here',
              style: TextStyle(
                color: Colors.green.shade900,
                fontSize: 25,
              ),

              
              
              ),
             
              
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('ADMIN LOGIN'),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Login())
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>settings()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Team Message'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>sms()));
              },
            ),
             ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('LOG OUT'),
              onTap: null,
            )
            
          ],
        ),
      ),
      
      
  
    body: PageView(
      controller: _pageController,
      children: <Widget>[
        TabBoys(),
        TabGirls(),
        TabNotification(),
        TabStats(),
      ],
      onPageChanged: (int index){
        setState(() {
          _currentTab=index;
        });
      },
    ),
     bottomNavigationBar: CupertinoTabBar(
       currentIndex:_currentTab,
       onTap:(int index){
         setState((){
           _currentTab =index;
         });
         _pageController.animateToPage(index,
          duration:Duration(microseconds: 2000) ,
           curve: Curves.easeIn
           );
          
          //  items: <BottomNavigationBarItem>[
             

          //  ];
       }, items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
               icon: Icon(Icons.adb,size:30.0
               ),
               title:Text('Boys'),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.pregnant_woman,size:30.0
             ),
             title: Text('Girls'),
             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.notifications_active,size:30.0
             ),
             title: Text('Notification'),
             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.stars,size:30.0
             ),
             title: Text('Stats')
             ),

       ],
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: null,
       child: Icon(Icons.add),
       ),
    );
  }
}