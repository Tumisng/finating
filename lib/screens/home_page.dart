import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(

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
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
           
          
            child: Column(
              
              
              children: [
                
                  Stack(
                    children: [
                       Container(
                        height: 160,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          color: Colors.blue,
                          borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                    ),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ClipRRect(
                                child: Image.asset("assets/images/savings.png",
                                width: 100,
                                height: 100,),
                                ),
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.only(left: 70, top: 10),
                               child: Container(
                                  height: 130,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                                    color: Colors.blue[400]
                                    ),
                                    child: const Column(
                                      children: [
                                           Text("HELLO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                                           Text("Enter your group name", style: TextStyle(fontSize: 15, color: Colors.white),),
                                
                                        Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: TextField(
                                       decoration: InputDecoration(
                                          labelText: "Group Name",
                                          constraints: BoxConstraints(maxWidth: 170, maxHeight: 25),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(24)),
                                            borderSide: BorderSide.none,
                                            ),
                                            prefixIcon: Icon(Icons.search),
                                          ),
                                        ),
                                                    ),
                                      ],
                                    ),
                                  ),
                             ),
                            
                            
                          ]),
                          
                       ),
                    ],
                  ),

                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 480), // Add padding around the button
                    child: SizedBox(
                      width: 200, // Adjust width as needed
                      child:
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/groupcreation');
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400],
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)
                        )
                      ),
                    child: const Row(
                      children: [
                        Icon(Icons.add, 
                        color: Colors.white,
                        size: 20),
                        SizedBox(
                          width: 5,
                          height: 10,
                        ),
                        Text("New Group", style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),)
                      ],
                    )),
                    )),
                  ],
                ),
                  
                  
              ]),
            
              ),
        )),
    );
  }
}
