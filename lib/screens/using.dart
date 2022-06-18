import 'package:flutter/material.dart';
import './pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';
class Using extends StatefulWidget {
  const Using({ Key? key }) : super(key: key);

  @override
  State<Using> createState() => _UsingState();
}

class _UsingState extends State<Using> {
  int currentIndex=0;

  final screens = const[
    HomePage(),
    Explore(),
    Activity(),
    Inbox(),
    Profile(),
    
    
    
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            // backgroundColor: Colors.black,
       body: screens[currentIndex],
       
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        currentIndex: currentIndex,
        
        onTap: (index) =>setState(() => currentIndex = index),
        items:const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), 
            label: 'Home',
            
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label:'Explore',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label:' Activity',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label:' Inbox',
            
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label:'Profile',
            
          ),
        ] 
        ),
    );
  }
}