import 'package:flutter/material.dart';

class OtpSuccessPage extends StatefulWidget {
  const OtpSuccessPage({super.key});

  @override
  State<OtpSuccessPage> createState() => _OtpSuccessPageState();
}

class _OtpSuccessPageState extends State<OtpSuccessPage> {
 

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      

      home:Scaffold(
      
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal:20),
          height: MediaQuery.of(context).size.height,

          child: Column(
            
            children:[
              ClipRRect(
              child: Image.asset("assets/images/success.jpg",
              width: 600,
              height: 350,),
            ),

            const Text("Success!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),

            const Text("Congratulations! You have been successfully authenticated", style: TextStyle(fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,),
           
           Padding(
             padding: const EdgeInsets.only(top: 30, left: 5),
             child: ElevatedButton(
             onPressed: (){}, 
             style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue[400],
             side: BorderSide.none,
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(24.0), // Set border radius
                ),
              ),
             child: 
             const SizedBox(
             width: 320,
             height: 50,
             child: Padding(
               padding: EdgeInsets.only(top: 10),
               child: Text("Continue", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
               textAlign:  TextAlign.center,
               ),
             ), 
           ),
        ),
       ),
       ]
        ),
      ),
      ),
    ));
  }
}
