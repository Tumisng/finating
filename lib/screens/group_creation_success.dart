import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GroupCreationSuccessPage extends StatefulWidget {
  const GroupCreationSuccessPage({super.key});

  @override
  State<GroupCreationSuccessPage> createState() => _GroupCreationSuccessPageState();
}

class _GroupCreationSuccessPageState extends State<GroupCreationSuccessPage> {
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          leading:  IconButton (onPressed: (){},
           icon:const Icon(Icons.arrow_back)),),

           bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
                   type: BottomNavigationBarType.fixed,
                   showSelectedLabels: true,
                   showUnselectedLabels: true,
                   items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black,),
               label: 'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet, color: Colors.black,),
              label: 'wallet'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black,),
              label: 'notification'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.black,),
              label: 'chat'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black,),
              label: 'profile'
            ),
                   ],
                 ),
      
      body: SafeArea(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
               bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
            ),
            color: Colors.blue[700],
          ),
        
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("MONTHLY MOTSHELO", 
                style: TextStyle(fontSize: 25, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
                )),
  
                         
             Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    color: Colors.white,
                      child:  Padding(
                        padding:  const EdgeInsets.only(left: 5, right: 5, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                              child: Image.asset("assets/images/success.jpg",
                              width: 180,
                              height: 180,),
                                                        ),
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text("You have successfully created...", style: TextStyle(fontSize: 20, color: Colors.black),)),

                        Padding(
                          padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
                          child: Stack(
                              children: [
                                Image.asset("assets/images/card_details.png", fit: BoxFit.cover),
                                Positioned(
                                  top: 20, // Adjust position as needed
                                  left: 30, // Adjust position as needed
                                  child: Text(
                                    "Finating",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          
                                Positioned(
                                  top: 165, // Adjust position as needed
                                  left: 20, // Adjust position as needed
                                  child: Text(
                                    "Card_Name_Details",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          
                                Positioned(
                                  top: 165, // Adjust position as needed
                                  left: 230, // Adjust position as needed
                                  child: Text(
                                    "Expiry_Details",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),



                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 250),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.withAlpha(50),
                                  ),
                                  child: IconButton(onPressed: () => Share.share(''), 
                                  icon: const Icon(Icons.share),
                                  iconSize: 50,),
                                ),
                              ),
                            ),
                          ]
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
    );
  }

}



