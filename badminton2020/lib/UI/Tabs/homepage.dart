// import './TabHome/tabhome.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'welcome tabs',
//         home: tab_home(),
//     );
    
//   }
// }

import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';
import 'package:flutter/material.dart';
import './TabHome/tabhome.dart';
import './TabNotification/tabnotification.dart';
import './TabStats/tabstats.dart';

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
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('UOK BADMINTON'),
      ),
      body: Center( 
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar( 
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          title: Text('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
          title: Text('Notification'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star),
          title: Text('Show Stats'),
          )
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:Colors.greenAccent[800],
        onTap: _onItemTapped,
        
      ),
      extendBodyBehindAppBar: new IndexedStack(
        index:_selectedIndex,
        children: <Widget>[
          new tab_home(),
          new tab_notification(),
          new tab_stats(),
          
        ],
      ),
    );
  }
}