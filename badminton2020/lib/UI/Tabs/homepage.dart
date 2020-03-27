import './TabHome/tabhome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'welcome tabs',
        home: tab_home(),
    );
    
  }
}