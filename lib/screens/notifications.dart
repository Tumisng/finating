import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],    
                    borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ), 
                  ),
                  child: 
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Contributions", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white))),
              ),
              ],
            ),

            Align(
              alignment: Alignment.topRight,
              child: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                // Handle tap event, e.g., show a calendar widget
                        
              },
             ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){},
                 icon: Icon(Icons.download, color: Colors.black, size: 40,)),

                 IconButton(onPressed: (){},
                 icon: Icon(Icons.filter, color: Colors.black, size: 40,)),

                 IconButton(onPressed: (){},
                 icon: Icon(Icons.search, color: Colors.black, size: 40,)),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Download", style: TextStyle(fontSize: 15, color: Colors.grey),),

                Text("Filter", style: TextStyle(fontSize: 15, color: Colors.grey)),

                Text("Search", style: TextStyle(fontSize: 15, color: Colors.grey))
              ],
            )
           
          ],),

                        
           ),
          
        ),
      ),
      );
  }

}



