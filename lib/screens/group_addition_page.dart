import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GroupAdditionPage extends StatefulWidget {
  const GroupAdditionPage({super.key});

  @override
  State<GroupAdditionPage> createState() => _GroupAdditionPageState();
}

class _GroupAdditionPageState extends State<GroupAdditionPage> {
   String _selectedValue = "Option 1";
   DateTime? _selectedDate;
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
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        
          child:  Column(
            children: [
              Stack(
                children: [
                  Container(
                    
                    width: double.infinity,
                   decoration:  BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),),
                    height: 80,
                    child: const Column(
                      children: [
                         Text("SAVINGS GROUP", 
                        style: TextStyle(fontSize: 25, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                        )),
                      ],
                    ),
                  ),
                ],
              ),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   
                     const Text("MONTHLY MOTSHELO", 
                                   style: TextStyle(fontSize: 25, 
                                   fontWeight: FontWeight.bold, 
                                   color: Colors.black),),
                   
              
                const Padding(
                  padding:  EdgeInsets.only(top: 16),
                  child: Text("Group Savings Name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.start,),
                 ),
              
                 const TextField(
                  decoration: InputDecoration(
                  labelText: "Group_Name",
                  constraints: BoxConstraints(maxWidth: 300, maxHeight: 50),
                  border:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none,
                   ),
                  ),
                ),
                const Padding(
                 padding: EdgeInsets.only(top: 16),
                 child: Text("Type of savings group", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                 textAlign: TextAlign.start,),
                 ),
              
                 DropdownButton<String>(
                              value: _selectedValue,
                              items: const [
                                DropdownMenuItem(
                                  value: "Option 1",
                                  child: Text("Monthly Savings"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 2",
                                  child: Text("Rotational Savings"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 3",
                                  child: Text("Credit Associations"),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                            ),
              
                const Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text("Monthly Contribution", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.start,),
                              ),
                    
                              DropdownButton<String>(
                              value: _selectedValue,
                              items: const [
                                DropdownMenuItem(
                                  value: "Option 1",
                                  child: Text("50"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 2",
                                  child: Text("100"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 3",
                                  child: Text("150"),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                            ),  
              
              const Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text("Start Date", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.start,),
                              ),
              
                            TextField(
                              controller: TextEditingController(
                                  text: _selectedDate != null
                                      ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
                                      : ''),
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100),
                                ).then((pickedDate) {
                                  if (pickedDate != null) {
                                    setState(() {
                                      _selectedDate = pickedDate;
                                    });
                                  }
                                });
                              },
                              decoration: const InputDecoration(
                                labelText: 'Select Date',
                                suffixIcon: Icon(Icons.calendar_today),
                              ),
                            ),
              const Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text("Group Members", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                textAlign: TextAlign.start,),
                              ),
                    
                              DropdownButton<String>(
                              value: _selectedValue,
                              items: const [
                                DropdownMenuItem(
                                  value: "Option 1",
                                  child: Text("1-5"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 2",
                                  child: Text("6-10"),
                                ),
                                DropdownMenuItem(
                                  value: "Option 3",
                                  child: Text("11-15"),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                            ), 
              
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4, left: 200),
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
                                        width: 100,
                                        child: Text("Add Group", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                                        textAlign:  TextAlign.center,
                                        ), 
                                      ),
                                    ),
                                  ),
                ],
              ),
            ),
             
            ],
          ),
        ),
      ),
      ),
    );
  }
}
