import 'package:flutter/material.dart';

class OtpVerficationPage extends StatefulWidget {
  const OtpVerficationPage({super.key});

  @override
  State<OtpVerficationPage> createState() => _OtpVerficationPageState();
}

class _OtpVerficationPageState extends State<OtpVerficationPage> {
 

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
              child: Image.asset("assets/images/otp.jpg",
              width: 600,
              height: 350,),
            ),

            const Text("OTP  Verification", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
            const Text("We will send you one time password to this mobile number", style: TextStyle(fontSize: 20, color: Colors.grey),),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Enter Mobile Number", style: TextStyle(fontSize: 18, color: Colors.grey[350]),),
            ),

           const Padding(
             padding:  EdgeInsets.only(top: 20),
             child: TextField(
              decoration: InputDecoration(
               labelText: "Mobile_Number",
               constraints: BoxConstraints(maxWidth: 230),
               enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
               border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide.none,
              ),
                       ),
                      ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 30),
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
               child: Text("GET OTP", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
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
