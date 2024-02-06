import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home:Scaffold(

      
      
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        
          child:  Column(
            
            children: [
              Stack(
                
                children: [
                  Container(
                    height: 200,
                    width: 395,
                    color: Colors.blue[700],
                    child: Column(
                      children: [
                        ClipRRect(
                        child: Image.asset("assets/images/Finating_logo.png",
                        width: 350,
                        height: 200,))
                      ],
                    ),
                  )
                ],
              ),
        
               Padding(
                padding:  const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                       child: Text("Lets sign you in", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center),
                     ),
        
                     const Text("Start taking control of your savings group finances today by creating an account", style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
        
                      const Padding(
                        padding:  EdgeInsets.only(top: 18),
                        child: Text("Mobile Number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.start,),
                      ), 
        
                       TextField(
                        decoration: InputDecoration(
                            labelText: "Number",
                            constraints: const BoxConstraints(maxWidth: 500),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide.none,
                              ),
                            ),
                            
                          ),
        
                       const Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Password", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.start,),
                      ),
        
                       TextField(
                        decoration: InputDecoration(
                            labelText: "Password",
                            constraints: const BoxConstraints(maxWidth: 500),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border:  const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide.none,
                              ),
                              suffixIcon: IconButton(
                                     icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off,
                                     ),
                                     onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                     },)
                            ),
                          ),
        
                      Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/home');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[400],
                                side: BorderSide.none,
                                 shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Set border radius
                              ),
                              ), 
                              child: 
                              const SizedBox(
                                width: double.infinity,
                                child: Text("Sign In", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign:  TextAlign.center,
                                ), 
                              ),
                              ),
                          ),
        
                          
                          const Padding(
                            padding: EdgeInsets.only(top: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do not have an account?", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                Text("Register", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
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
    
      ),
      );
  }
}
