
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
// import './../placeholder_widget.dart';


class welcomescreen extends StatefulWidget {
  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
   int _currentIndex = 0;
  // final List<Widget> _children = [
  //   // placeholder_widget(),
  //   // placeholder_widget(),
  //   // placeholder_widget(),
  // ];

  // int _selectedIndex=0;
  // static const TextStyle optionStyle=
  //   TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOption =<Widget>[
    
  //   Text( 
  //     'Index 0:Home',
  //     style: optionStyle,
  //   ),
  //   Text( 
  //     'Index 1:Message',
  //     style: optionStyle,
  //   ),
  //   Text( 
  //     'Index 2:STATS',
  //     style: optionStyle,
  //   ),
  // ];
  // void _onItemTapped(int index){
  //   if(index==0)
  //   {
  //      Navigator.of(context)
  //     .push(MaterialPageRoute<Null>(builder: (BuildContext context){
  //     return new tab_home();
  //     }));
  //   }
  //   else if(index==1)
  //   {
  //      Navigator.of(context)
  //     .push(MaterialPageRoute<Null>(builder: (BuildContext context){
  //     return new tab_notification();
  //     }));
  //   }
  //   else {
  //      Navigator.of(context)
  //     .push(MaterialPageRoute<Null>(builder: (BuildContext context){
  //     return new tab_stats();
  //     }));
  //   }
   
  // }
  // void onTabTapped (int index){
  //   setState(() {
  //     _currentIndex=index;
  //   });
  // }
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
      drawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader( 
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                  image: AssetImage("images/feather-shuttle.jpg"),
                  fit: BoxFit.cover
                )
                
                ),
                 // void onTabTapped (int index){
  //   setState(() {
  //     _currentIndex=index;
  //   });
  // } // void onTabTapped (int index){
  //   setState(() {
  //     _currentIndex=index;
  //   });
  // }
                
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
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Team Message'),
            ),
             ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('LOG OUT'),
            )
            
          ],
        ),
      ),
      
      // bottomNavigationBar: BottomNavigationBar( 
      //   backgroundColor: Colors.green.shade100,
      //   onTap:onTabTapped,
      //   type: BottomNavigationBarType.shifting,
      //   currentIndex:_currentIndex,
      //   items: const<BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home),
      //     title: Text('Boys Team',textDirection: TextDirection.ltr,),
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.home),
      //     title: Text('Girls Team',textDirection: TextDirection.ltr,),
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.notifications),
      //     title: Text('Notification',textDirection: TextDirection.ltr,),
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.star),
      //     title: Text('Show Stats',textDirection: TextDirection.ltr,),
      //     )
          
      //   ],
      //   // currentIndex: _selectedIndex,
      //   selectedItemColor:Colors.greenAccent.shade700,
       
        
      // ),
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
           Colors.green;
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
    );
  }
}