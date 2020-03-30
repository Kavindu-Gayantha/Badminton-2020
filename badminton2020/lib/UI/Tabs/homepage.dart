
// import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';

import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';
import 'package:badminton2020/UI/Tabs/TabNotification/tabnotification.dart';
import 'package:badminton2020/UI/Tabs/TabStats/tabstats.dart';
import 'package:flutter/material.dart';


class welcomescreen extends StatefulWidget {
  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {

  int _selectedIndex=0;
  static const TextStyle optionStyle=
    TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption =<Widget>[
    
    Text( 
      'Index 0:Home',
      style: optionStyle,
    ),
    Text( 
      'Index 1:Message',
      style: optionStyle,
    ),
    Text( 
      'Index 2:STATS',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index){
    if(index==0)
    {
       Navigator.of(context)
      .push(MaterialPageRoute<Null>(builder: (BuildContext context){
      return new tab_home();
      }));
    }
    else if(index==1)
    {
       Navigator.of(context)
      .push(MaterialPageRoute<Null>(builder: (BuildContext context){
      return new tab_notification();
      }));
    }
    else {
       Navigator.of(context)
      .push(MaterialPageRoute<Null>(builder: (BuildContext context){
      return new tab_stats();
      }));
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('UOK BADMINTON',textDirection: TextDirection.ltr),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Center( 
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar( 
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          title: Text('Home',textDirection: TextDirection.ltr,),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
          title: Text('Notification',textDirection: TextDirection.ltr,),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star),
          title: Text('Show Stats',textDirection: TextDirection.ltr,),
          )
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:Colors.greenAccent.shade700,
        onTap: _onItemTapped,
        
      ),
     
    );
  }
}