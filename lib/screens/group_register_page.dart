import 'package:flutter/material.dart';

class GroupRegisterPage extends StatefulWidget {
  const GroupRegisterPage({super.key});

  @override
  State<GroupRegisterPage> createState() => _GroupRegisterPageState();
}

class _GroupRegisterPageState extends State<GroupRegisterPage> {
  bool _isObscure = true;
  final _isFilled = true;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home:Scaffold(
      
      body: SafeArea(
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.blue[700],
          ),
        
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hi! lets get you registered", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                const Text("Please provide the following details:", style: TextStyle(fontSize: 15, color: Colors.white),),
                    
                const Spacer(),
                    
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("You are a", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                    
                Column(
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
                                  child: Text("Group member", style: TextStyle(fontSize: 18, color: Colors.black,),
                                  textAlign:  TextAlign.center,
                                  ), 
                                ),),
                  ],
                ), 
                     
                    
             Stack(
              children: [
                Container(
                  color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Registration", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
                          textAlign: TextAlign.center),

                          const Padding(
                            padding:  EdgeInsets.only(top: 8),
                            child: Text("Group Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          ),
                            
                           TextField(
                            decoration: InputDecoration(
                                labelText: "Group_Name",
                                constraints: const BoxConstraints(maxWidth: 500),
                                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: _isFilled
                                  ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                  : null,
                                ),
                              ),
                            
                          const Padding(
                            padding:  EdgeInsets.only(top: 8),
                            child: Text("First Name", style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          ),
                            
                           TextField(
                            decoration: InputDecoration(
                                labelText: "First_Name",
                                constraints: const BoxConstraints(maxWidth: 500),
                                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: _isFilled
                                  ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                  : null,
                                ),
                              ),
                              
                              const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("Last Name", style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          ),
                            
                            TextField(
                            decoration: InputDecoration(
                                labelText: "Last_Name",
                                constraints: const BoxConstraints(maxWidth: 500),
                                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: _isFilled
                                  ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                  : null,
                                ),
                              ),
                              
                              const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("Mobile Number", style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          ),
                            
                            TextField(
                            decoration: InputDecoration(
                                labelText: "Number",
                                constraints: const BoxConstraints(maxWidth: 500),
                                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: _isFilled
                                  ? Icon(Icons.check, color: Colors.purple[300], size: 20,)
                                  : null,
                                ),
                              ),
                            
                            
                         const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("Password", style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          ),
                            
                            TextField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                constraints: const BoxConstraints(maxWidth: 500),
                                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                              
                                border:  const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                padding: const EdgeInsets.only(top: 16),
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue[400],
                                    side: BorderSide.none,
                                     shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0), // Set border radius
                                  ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                         Text("Sign up", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                                          SizedBox(width: 10),
                                          Icon(Icons.arrow_forward_rounded, color: Colors.white),
                                    ],
                                  )
                                   
                                  ),
                                  ),
                              
                        ],
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
