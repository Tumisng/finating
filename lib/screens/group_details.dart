import 'package:flutter/material.dart';


class GroupDetailsPage extends StatefulWidget {
  const GroupDetailsPage({super.key});

  @override
  State<GroupDetailsPage> createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
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
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: Text("AGAPE MONTHLY MOTSHELO", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
              ),

              const Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                        child: Card(
                          color: Colors.white,
                        child:  Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Total contributions:', style: TextStyle(fontSize: 15),),
                            Text('Card content'),
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
         Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: Card(
                          color: Colors.blue[700],
                        child:  const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('SUMMARY', style: TextStyle(color: Colors.white, fontSize: 30),),
                            Text('Card content', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                       ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            
          ],)               
           ),
          
        ),
      ),
      );
  }

}



