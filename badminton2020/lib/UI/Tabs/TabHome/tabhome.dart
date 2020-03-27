

import 'package:flutter/material.dart';

class tab_home extends StatefulWidget {
  @override
  _tab_homeState createState() => _tab_homeState();
}

class _tab_homeState extends State<tab_home> {

  int _selectedIndex=0;
  static const TextStyle optionStyle=
      TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption =<Widget>[
      Text( 
        'Index 0:Home',
        style: optionStyle,
      ),
      Text(
        'Index 1:Msg',
        style: optionStyle,
      ),
      Text(
        'Index 2: stats',
        style:optionStyle,
      ),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          title:Text('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message),
          title: Text('MSG'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.album),
          title: Text('STATS'),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      
    );
  }
}