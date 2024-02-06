import 'package:flutter/material.dart';

class OtpCodePage extends StatefulWidget {
  const OtpCodePage({super.key});

  @override
  State<OtpCodePage> createState() => _OtpCodePageState();
}

class _OtpCodePageState extends State<OtpCodePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      

      home:Scaffold(
        appBar: AppBar(
         leading:  IconButton (onPressed: (){},
           icon:const Icon(Icons.arrow_back)),
        ),
      
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal:20),
          height: MediaQuery.of(context).size.height,

          child: Column(
            
            children:[
              const Text("Verification Code", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),

            const Text("We have sent the verification code to your mobile number", style: TextStyle(fontSize: 20, color: Colors.grey),),

          const Row(
            children: [
              Padding(
             padding:  EdgeInsets.only(top: 20, left: 5),
             child: TextField(
              decoration: InputDecoration(
               labelText: "",
               constraints: BoxConstraints(maxWidth: 80),
               filled: true,
               fillColor: Colors.white,
               border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide(color: Colors.grey),
              ),
                       ),
                      ),
           ),

           Padding(
             padding:  EdgeInsets.only(top: 20, left: 5),
             child: TextField(
              decoration: InputDecoration(
               labelText: "",
               constraints: BoxConstraints(maxWidth: 80),
               filled: true,
               fillColor: Colors.white,
               border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide(color: Colors.grey),
              ),
                       ),
                      ),
           ),

           Padding(
             padding:  EdgeInsets.only(top: 20, left: 5),
             child: TextField(
              decoration: InputDecoration(
               labelText: "",
               constraints: BoxConstraints(maxWidth: 80),
               filled: true,
               fillColor: Colors.white,
               border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide(color: Colors.grey),
              ),
                       ),
                      ),
           ),

           Padding(
             padding:  EdgeInsets.only(top: 20, left: 5),
             child: TextField(
              decoration: InputDecoration(
               labelText: "",
               constraints: BoxConstraints(maxWidth: 80),
               filled: true,
               fillColor: Colors.white,
               border: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide(color: Colors.grey),
              ),
                       ),
                      ),
           ),

            ],
          ),
           
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
               child: Text("Confirm", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
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
