// ignore_for_file: prefer_const_constructors


import 'dart:ui';

import 'package:flutter/material.dart';
import './pages.dart';

class Explore extends StatefulWidget {
  const Explore({ Key? key }) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 500.0,
                  child: Card(
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 20.0,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top:10.0),
                          child:  Text('Amenities',
                          style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 70,
                                height: 40,
                                child:  Padding(
                                  padding: EdgeInsets.only(left:8.0),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                                    
                                    elevation: 20.0,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Wiffi',
                                      style: TextStyle(color:
                                       Colors.white,
                                       fontSize: 17.0,
                                       fontWeight: FontWeight.bold,
                                       ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 40,
                                child: Card(
                                         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                                  color: Colors.grey,
                                  elevation: 20.0,
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('TV',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),
                                  ) ,
                                ),
                              ),
                              Container(
                                width: 140,
                                height: 60,
                                child: Card(
                                                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),

                                  color: Colors.grey,
                                  child:Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text('Working Space',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    ),
                                  ) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        
                      ],
                    ),
                  ),
                ),
            Stack(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: Container(
          decoration: new BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          height: 240,
          
          child: Image(image: AssetImage('assets/images/house.jpeg'),),
      ),
    ),
    Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          height: 50,
          width: 50,
          child: Card(
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
            elevation: 20.0,
            child: Icon(Icons.favorite,
            size: 30.0,
            color: Colors.red,
            ),
          ),
        ),
      ),
    )
  ],
),
     Container(
       height: 120,
       child: Padding(
         padding: const EdgeInsets.only(left:17.0,right: 17.0),
         child: Card(
           elevation: 20.0,
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                    //  child: Text('Villa Akira Hotel',
                    //  style: TextStyle(fontSize: 18.0,
                    //  fontWeight: FontWeight.bold,
                    //  ),
                    //  ),
                    child: TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder :(builder)=> const DetailPage(),),);
                    }, 
                    child: Text('Villa Akira Hotel',
                    style: TextStyle(fontSize: 18.0,
                    color: Colors.black,
                    fontWeight:FontWeight.bold ),
                    )),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children:const [
                         Text('  \$100',
                         style: TextStyle(
                           fontSize: 18.0,
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                         Text('/ Night',
                         style: TextStyle(fontSize: 18.0),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children:const [
                     Icon(Icons.star,
                     color: Colors.green,
                     ),
                     Text('4.73',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 17.0,
                       ),
                     ),
                     Text('(900 reviews)',
                     style: TextStyle(color: Colors.grey,
                     fontSize: 16.0,
                     fontWeight: FontWeight.bold,
                     ),
                     ),

                   ],
                 ),
               )
             ],
           ),
         ),
       ),
     ),
          Stack(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: Container(
          decoration: new BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          height: 240,
          
          
          child: Image(image: AssetImage('assets/images/real.jpeg'),),
      ),
    ),
    Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          height: 50,
          width: 50,
          child: Card(
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
            elevation: 20.0,
            child: Icon(Icons.favorite_border_outlined,
            size: 30.0,
           
            ),
          ),
        ),
      ),
    )
  ],
),
     Container(
       height: 100,
       child: Padding(
         padding: const EdgeInsets.only(left:17.0,right: 17.0),
         child: Card(
           elevation: 20.0,
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('Emerald Hotel',
                     style: TextStyle(fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: const[
                         Text('  \$80',
                         style: TextStyle(
                           fontSize: 18.0,
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                         Text('/ Night',
                         style: TextStyle(fontSize: 18.0),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children:const [
                     Icon(Icons.star,
                     color: Colors.green,
                     ),
                     Text('4.71',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 17.0,
                       ),
                     ),
                     Text('(850 reviews)',
                     style: TextStyle(color: Colors.grey,
                     fontSize: 16.0,
                     fontWeight: FontWeight.bold,
                     ),
                     ),

                   ],
                 ),
               )
             ],
           ),
         ),
       ),
     ),
          Stack(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: Container(
          decoration: new BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          height: 240,
          
          child: Image(image: AssetImage('assets/images/racks.jpeg'),),
      ),
    ),
    Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          height: 50,
          width: 50,
          child: Card(
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
            elevation: 20.0,
            child: Icon(Icons.favorite,
            size: 30.0,
            color: Colors.red,
            ),
          ),
        ),
      ),
    )
  ],
),
     Container(
       height: 100,
       child: Padding(
         padding: const EdgeInsets.only(left:17.0,right: 17.0),
         child: Card(
           elevation: 20.0,
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('Racks Hotel',
                     style: TextStyle(fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children:const [
                         Text('  \$120',
                         style: TextStyle(
                           fontSize: 18.0,
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                         Text('/ Night',
                         style: TextStyle(fontSize: 18.0),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children:const [
                     Icon(Icons.star,
                     color: Colors.green,
                     ),
                     Text('4.73',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 17.0,
                       ),
                     ),
                     Text('(950 reviews)',
                     style: TextStyle(color: Colors.grey,
                     fontSize: 16.0,
                     fontWeight: FontWeight.bold,
                     ),
                     ),

                   ],
                 ),
               )
             ],
           ),
         ),
       ),
     ),
      
           
          
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}