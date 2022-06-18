



import 'dart:ui';

import 'package:flutter/material.dart';
import './pages.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/house.jpeg",
                        
                        ),
                        fit: BoxFit.cover,
                        ),

                    ),
                  ),
                  Positioned(
                    child: Row(
                      
                      
                      children: [
                       const Align(
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Card(
                            elevation: 20.0,
                            child: IconButton(onPressed: (){
                              Navigator.of(context).pop(MaterialPageRoute(builder :(builder)=> const Explore(),),);

                            }, 
                            icon:const Icon(Icons.arrow_back_ios_new_outlined),),
                            
                          ),
                        ),
                        
                        
                      ],
                    )
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(
                  
                  
                  children: [
                   const Text('Villa Akira Hotel',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0,top: 10),
                      child: Row(
                        children:const [
                          Icon(Icons.star,
                          color: Colors.green,
                          ),
                          Text('4.73',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(' (900 reviews) .',
                          style: TextStyle(color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,

                          ),
                          ),
                          Icon(Icons.location_on_outlined,
                          color: Colors.grey,
                          ),
                          Text(' Surabaya',
                          style: TextStyle(fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children:const [
                          Text('minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style: TextStyle(fontSize: 17.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),
                Divider(
                  color: Colors.green[400],
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text('Facilities',
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              
                              children:const [
                                
                                Icon(Icons.bed_sharp,
                                size: 40.0,
                                color: Colors.blue,
                                ),
                                Text('2 Bedroom',
                                style:TextStyle(fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                ) ,
                                ),
                                
                                
                              ],
                            ),
                            Row(
                              
                              children:const [
                                
                                Icon(Icons.bathtub,
                                size: 30.0,
                                color: Colors.blue,
                                ),
                                Text('1 Bathroom',
                                style: TextStyle(fontSize:17.0,
                                fontWeight: FontWeight.bold,
                                 ),
                                ),
                                
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              
                              children:const [
                                
                                Icon(Icons.wifi_find_rounded,
                                size: 40.0,
                                color: Colors.blue,
                                ),
                                Text(' Wiffi',
                                style:TextStyle(fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                ) ,
                                ),
                                
                                
                              ],
                            ),
                            Row(
                              
                              children:const [
                                
                                Icon(Icons.tv_rounded,
                                size: 35.0,
                                color: Colors.blue,
                                ),
                                Text('Television',
                                style: TextStyle(fontSize:17.0,
                                fontWeight: FontWeight.bold,
                                 ),
                                ),
                                
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            child: Card(
                              elevation: 30.0,
                                            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        const Text('\$100',
                                        style: TextStyle(fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        Row(
                                          children:const [
                                            Icon(Icons.star,
                                            color: Colors.green,
                                            ),
                                            Text('4.73',
                                            style: TextStyle(fontSize: 17.0),
                                            ),
                                          ],
                                        ),
                          
                                      ],
                                    ),
                                    ElevatedButton(onPressed: (){
                                    showDialog(context: context, 
                                    builder: (context)=>AlertDialog(
                                      title: const Text('Room Reservation'),
                                      content: const Text('Reserve a room',
                                      style: TextStyle(fontSize: 18.0)
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                           ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("Room reserved",
                                           style: TextStyle(fontSize: 20.0),
                                           ),),);
                                           Navigator.pop(context);
                                        }, 
                                        child:const Text('Yes',
                                        style: TextStyle(fontSize: 17.0),
                                        ),
                                        ),
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, 
                                        child:const Text('No',
                                        style:TextStyle(fontSize: 17.0)
                                        )),
                                      ],
                                    ),

                                    );
                                    }, 
                                    child: const Text('Reserve',
                                    style: TextStyle(fontSize: 18.0),
                                    ),),
                                    
                                  ],
                                  
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                      
                    ],
                  ),
                )

                  
                  ],
                ),
              )
            ],
          ),
          
          
        ),
        
      ),
    );
  }
}