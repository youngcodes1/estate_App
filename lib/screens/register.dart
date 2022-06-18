// ignore_for_file: prefer_const_constructors





import 'package:flutter/material.dart';
import './pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/house.jpeg"),
                 fit: BoxFit.cover),

                  ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:80.0),
                        child: Text('REAL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          ),
                        ),
                        
                      ),
                      Text('Estate Agency',
                      style: TextStyle(
                        fontSize: 24.0,
                        color:Colors.blue,
                        fontWeight:FontWeight.bold,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value){
                                if(value== null || value.isEmpty){
                                  return 'Enter email';
                                }if (!emailRegex.hasMatch(value)) {
                        return 'Please enter valid email';
                      }
                              },
                                style: TextStyle(color: Colors.white),
                              
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                  
                                  
                                  ),
                                  
                                labelText: 'email',
                                prefixIcon: Icon(Icons.email, ),
                                errorStyle: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                
                              ),
                              controller: _email,
                              
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            TextFormField(
                              validator: (value){
                                if(value== null || value.isEmpty){
                                  return 'Enter password';
                                }
                              },
                                
                              obscureText: true,
                             
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                  ),
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
                                  errorStyle: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  
                                  
                                ),
                                controller: _password,
                            ),
                            SizedBox(
                              height: 40.0,

                            ),
                            TextFormField(
                              validator: (value){
                                if(value== null || value.isEmpty){
                                  return 'Enter confirm password';
                                }if (value != _password) {
                        return 'Password do not match';
                      }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                  ),
                                  labelText: 'Confirm Password',
                                  prefixIcon: Icon(Icons.lock),
                                  errorStyle: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                controller: _confirmpassword,

                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            ElevatedButton(onPressed: () {
                              if(_formKey.currentState!.validate()){
      
                                }


                            },
                             child: Text('REGISTER',
                             style: TextStyle(fontSize: 19.0),
                             ),
                             style:ElevatedButton.styleFrom(
                           padding:const  EdgeInsets.symmetric(horizontal: 130.0,vertical: 15.0,),
                   
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      
                                      
                
                                    ),
                                  ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                
                                 children: [
                                   Text('Already have an account?',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                   TextButton(onPressed:(){
                                      Navigator.of(context).push(MaterialPageRoute(builder :(builder)=> const LoginPage (),),);
                                   },
                                    child: Text('LOGIN',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      
                                      ),
                                    ),
                                    ),
                                 ],
                               ),
                             ),
                             SizedBox(
                               height: 20.0,
                             ),
                             Row(
                               
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Card(
                                   elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                                   child: Icon(Icons.facebook,
                                   color: Colors.blue,
                                   
                                   ),
                                 ),
                                 Card(
                                   elevation: 10.0,
                                                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  ),
                                   child: Icon(FontAwesomeIcons.twitter,
                                   color: Colors.blue,
                                   
                                   ),
                                 ),
                                 Card(
                                   elevation: 10.0,
                                                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                                   child: Icon(FontAwesomeIcons.google,
                                   color: Colors.blue,
                                   ),
                                 ),

                                
                               ],
                             ),
                           
                          ],
                        ),
                        ),
                    ),
                 
                    ],

                    ),
                    
                    
                ),
              ),
             
            
          ],
        ),
      
      
      
      ),
     
      
      
      
    );
  }
}