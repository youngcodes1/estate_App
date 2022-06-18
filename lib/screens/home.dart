// ignore_for_file: prefer_const_constructors









import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0,left: 20.0),
            child: Column(
              
              children: [
                Container(
                  height: 80,
                  
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 20.0,

                    child: (
                      TextField(
                        decoration: InputDecoration(
                          
                          hintText: 'Looking for a house,hotel or Apartment?',
                          border:InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 17.0,
                          ),
                         
                         
                          prefixIcon: Icon(Icons.search,
                          size: 35.0,
                          color: Colors.black,
                          ),
                          
                          
                           

                        ),
                      )
                    ),
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Card(
                        elevation: 20.0,
                        child: Row(
                          children: [
                            Icon(Icons.holiday_village,
                            size: 50,
                            color:Colors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: const[
                                  Text('Condo',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  ),
                                  Text('186 items',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.grey,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:35,),
                      child: Card(
                        elevation: 20,
                        child: Row(
                          children: [
                            Icon(Icons.apartment,
                            color: Colors.blue,
                            size: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children:const [
                                  Text('Apartment',
                                  style: TextStyle(fontSize: 20.0),
                                  ),
                                  Text('130 rooms',
                                  style: TextStyle(fontSize:18.0,color: Colors.grey ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],

                        
                        ),
                      ),
                    ),
                    

                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Container(
                       
                        child: Card(
                          
                          elevation: 20.0,
                          child:Row(
                            children: [
                              Icon(Icons.home_filled,
                              size: 50.0,
                              color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children:const [
                                    Text('House',
                                    style: TextStyle(fontSize: 20),
                                    ),
                                    Text('136 houses',
                                    style: TextStyle(fontSize: 18.0,color: Colors.grey),
                                    ),
                               
                                  ],

                                ),
                              ),
                            ],
                          ),
                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Container(
                        height: 72,
                        width: 190,
                        child: Card(
                          elevation: 20.0,
                          child: Row(
                            children: [
                              Icon(Icons.local_hotel,
                              size: 50,
                              color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children:const [
                                    Text('Hotel',
                                    style: TextStyle(fontSize: 20.0),
                                    ),
                                    Text('170 hotels',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      
                                      color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top:70.0,right:10.0),
                  child: Card(
                    elevation: 20.0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const[
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text('Nearby',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text('see all',
                              style: TextStyle(
                                color: Colors.blue,fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                           'assets/images/house.jpeg',
                             height: 70,
                              width: 80 ,
                               ),
                               Column(
                                 children: [
                                   Text('Villa Akira',
                                   style: TextStyle(
                                     fontSize: 15.0,
                                     fontWeight: FontWeight.bold,
                                     ),
                                   ),

                                   Row(
                                     children: const[
                                       Icon(Icons.location_on_rounded,
                                       size:20.0,
                                       ),
                                       Text('136 items',
                                       style: TextStyle(
                                         color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold
                                         ),
                                       ),

                                     ],
                                   ),
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Row(
                                   children: [
                                     Image.asset('assets/images/home.jpeg',
                                     height: 70,
                                     width: 80,
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(right:5.0),
                                       child: Column(
                                         children: [
                                           Text('Alton Hotel',
                                           style: TextStyle(
                                             fontSize: 15.0,
                                             fontWeight: FontWeight.bold,
                                             ),
                                           ),
                                           Row(
                                             children:const [
                                               Icon(Icons.location_on_rounded,
                                               size: 20.0,
                                               ),
                                               Text('138 items',
                                               style: TextStyle(
                                                 color:Colors.grey,
                                                 fontWeight:FontWeight.bold,
                                                 ),
                                               )
                                             ],
                                           ),
                                          
                                         ],
                                       ),
                                     ),
                                   ],
                                 ),
                               ),

                            ],
                            
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            
                            children: [
                              Image.asset("assets/images/real.jpeg",
                              height: 70,
                              width: 80,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Column(
                                  children: [
                                    Text('Emelrad Hotel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      
                                    ),
                                    ),
                                    Row(
                                      children: const[
                                        Icon(Icons.location_on_rounded,
                                        size:20.0,
                                        ),
                                        Text('137 items',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/racks.jpeg',
                                    height: 70,
                                    width: 80,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Column(
                                        children: [
                                          Text("Racks Hotel",
                                          style: TextStyle(
                                            fontWeight:FontWeight.bold, 
                                            ),
                                          ),
                                          Row(
                                            children:const [
                                              Icon(Icons.location_on_rounded,
                                              size:20.0,
                                              ),
                                              Text('14 items',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              
                              
                              
                            ],
                          ),
                        ),
                      ],
                    

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