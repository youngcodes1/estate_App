import 'package:flutter/material.dart';
import './pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
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
                      const Padding(
                        padding:  EdgeInsets.only(top:80.0),
                        child: Text('REAL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          ),
                        ),
                        
                      ),
                      const Text('Estate Agency',
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
                                style:const TextStyle(color: Colors.white),
                              
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                  
                                  ),
                                
                                labelText: 'email',
                                prefixIcon:const Icon(Icons.email, ),
                                errorStyle:const TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                labelStyle:const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                              ),
                              controller: _email,
                            ),
                           const SizedBox(
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
                                  borderRadius: BorderRadius.circular(20),
                                  
                                  
                                  ),
                                
                                  labelText: 'Password',
                                  prefixIcon:const Icon(Icons.lock),
                                  errorStyle:const TextStyle(
                                    
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  
                                  
                                ),
                                  labelStyle:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  
                                  
                                ),
                                controller: _password,
                            ),
                            const SizedBox(
                              height: 50.0,

                            ),
                           
                           
                            ElevatedButton(onPressed: (
                              
                            ){
                               Navigator.of(context).push(MaterialPageRoute(builder :(builder)=> const Using(),),);
                                 ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("Login Succesful"),),);
                              if(_formKey.currentState!.validate()){
      
                                }

                            },
                             child:const Text('Login',
                             style: TextStyle(fontSize: 20.0),
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
                                  const Text("Don't have an account",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                   TextButton(onPressed:(){
                                      Navigator.of(context).push(MaterialPageRoute(builder :(builder)=> const RegisterPage (),),);
                                   },
                                    child: const Text('REGISTER',
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
                            const SizedBox(
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
                                   child:const Icon(Icons.facebook,
                                   color: Colors.blue,
                                   
                                   ),
                                 ),
                                 Card(
                                   elevation: 10.0,
                                                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  ),
                                   child:const Icon(FontAwesomeIcons.twitter,
                                   color: Colors.blue,
                                   
                                   ),
                                 ),
                                 Card(
                                   elevation: 10.0,
                                                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                                   child:const Icon(FontAwesomeIcons.google,
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