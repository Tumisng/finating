import 'package:flutter/material.dart';


class GroupDetails2Page extends StatefulWidget {
  const GroupDetails2Page({super.key});

  @override
  State<GroupDetails2Page> createState() => _GroupDetails2PageState();
}

class _GroupDetails2PageState extends State<GroupDetails2Page> {
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          leading:  IconButton (onPressed: (){},
           icon:const Icon(Icons.arrow_back, color: Colors.white,)),),

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
            color: Colors.white,
          
          child: Column(
            children: 
            [
            Stack(
              children: [
                
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],    
                    borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ), 
                  ),
                  child: 
                  Image.asset("assets/images/Micro-Equity.jpg", height: 900, width: 900,),
              ),

              const Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: SizedBox(
                        height: 70,
                        width: 280,
                        child: Card(
                          color: Colors.blue,
                        child:  Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('AGAPE MONTHLY MOTSHELO', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),

         const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child:  Text("Group Description:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),),
          )),
          const Padding(
            padding:  EdgeInsets.only(left: 20, top: 10),
            child:  Text("Agape is a savings group where members contribute a monthly payment of P500 to buy bulk food stock for the month of December.",
            style: TextStyle(fontSize: 20, ),),
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey[50],
                  ),
                  child: Column(
                    children: [
                
                    ],
                  ),
                ),
              )
            ],
          )                 
          ],),

                        
           ),
          
        ),
      ),
      );
  }

}



