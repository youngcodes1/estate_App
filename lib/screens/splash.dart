import 'dart:async';

import 'package:flutter/material.dart';
import './pages.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 void initState () {
    super.initState();
    Timer(const Duration(seconds:3), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (builder)=> const RegisterPage(),
      ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: [
          Column(
            children:const [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top :200.0),
                  child: Icon(Icons.real_estate_agent,
                  color: Colors.white,
                  size: 200,
                  ),
                ),
                
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Rent or Buy a Home',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(70.0),
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('@Real Estate Agency',
                style: TextStyle(fontSize: 20.0,
                
                fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}