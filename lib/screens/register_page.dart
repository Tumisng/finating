import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure = true;
  final _isFilled = true;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home:Scaffold(
      
      body: SafeArea(
        child: Container(
         
          decoration: BoxDecoration(
            color: Colors.blue[700],
          ),
        
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hi! lets get you registered", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                const Text("Please provide the following details:", style: TextStyle(fontSize: 15, color: Colors.white),),
                    
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text("You are a", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                    
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[100], // background
                          foregroundColor: Colors.white,
                          side: BorderSide.none,
                                     shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                        ),
                        ),
                         child: 
                                  const SizedBox(
                                    //width: double.infinity,
                                    child: Text("Group leader", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                                    textAlign:  TextAlign.center,
                                    ), 
                                  ),),
                      
                        ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,// background
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const SizedBox(
                                    //width: double.infinity,
                                    child: Text("Group member", style: TextStyle(fontSize: 18, color: Colors.black),
                                    textAlign:  TextAlign.center,
                                    ), 
                                  ),),
                    ],
                  ),
                ), 
                     
                    
             Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(40, 40),
                        topRight: Radius.elliptical(40, 40)
                      ),
                      color: Colors.white,
                    ),
                    height: 555,
                    width: 450 ,
                    
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: Text("Registration", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),)),
                              
                            const Padding(
                              padding:  EdgeInsets.only(top: 8),
                              child: Text("First Name", style: TextStyle(fontSize: 20, color: Colors.grey),
                              textAlign: TextAlign.start,),
                            ),
                              
                             TextField(
                              decoration: InputDecoration(
                                  labelText: "First_Name",
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    
                                    ),
                                    suffixIcon: _isFilled
                                    ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                    : null,
                                  ),
                                ),
                                
                                const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("Last Name", style: TextStyle(fontSize: 20, color: Colors.grey),
                              textAlign: TextAlign.start,),
                            ),
                              
                              TextField(
                              decoration: InputDecoration(
                                  labelText: "Last_Name",
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    
                                    ),
                                    suffixIcon: _isFilled
                                    ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                    : null,
                                  ),
                                ),
                                
                                const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("Mobile Number", style: TextStyle(fontSize: 20, color: Colors.grey),
                              textAlign: TextAlign.start,),
                            ),
                              
                              TextField(
                              decoration: InputDecoration(
                                  labelText: "Number",
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    
                                    ),
                                    suffixIcon: _isFilled
                                    ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                    : null,
                                  ),
                                ),
                              
                              
                           const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("Password", style: TextStyle(fontSize: 20, color: Colors.grey),
                              textAlign: TextAlign.start,),
                            ),
                              
                              TextField(
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                  border:  const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    
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
                                  padding: const EdgeInsets.only(top: 16),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, '/login');
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
                                      width: 320,
                                      child: Text("Sign up", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                                      textAlign:  TextAlign.center,
                                      ), 
                                    ),
                                    ),
                                ),
                          ],
                        ),
                      ),
                  ),
                ),
              ],
                    
            ),
              ]),
          ),
        ),
      ),
      ),
    );
  }
}
