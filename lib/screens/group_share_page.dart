import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter/services.dart'; 

class GroupSharePage extends StatefulWidget {
  const GroupSharePage({super.key});

  @override
  State<GroupSharePage> createState() => _GroupSharePageState();
}

class _GroupSharePageState extends State<GroupSharePage> {
  int _currentIndex = 0;
  String linkToShare = 'https://www.example.com/';
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        ),
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
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet,
                  color: Colors.black,
                ),
                label: 'wallet'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                label: 'notification'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.black,
                ),
                label: 'chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'profile'),
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
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 65, left: 10),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            child: Column(
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Share with",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.close)),
                                    ]),


                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/images/chat.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                  
                                      Image.asset(
                                        'assets/images/whatsapp.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                  
                                      Image.asset(
                                        'assets/images/email.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                ),

                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Chat", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Text("Whatsapp", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Text("Email", style: TextStyle(fontSize: 20, color: Colors.black),)
                                  ],
                                ),

                                const Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Text("Or Share with link", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                                  )),

                                 Padding(
                                   padding: const EdgeInsets.only(top: 50),
                                   child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: myController, // Controller for text input
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          //border: OutlineInputBorder(), // Optional border
                                          hintText: 'link',
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.copy, color: Colors.green[200],),
                                      onPressed: () {
                                        Clipboard.setData(ClipboardData(text: myController.text));
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Copied to clipboard!')),
                                        );
                                      },
                                    ),
                                                                   ],
                                                                 ),
                                 ), 
                              ],
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

  void shareOnWhatsApp() async {
    await Share.share(linkToShare, subject: 'Check out this link');
  }

  void shareOnChat() async {
    // Use a specific chat plugin or platform-specific method
    // (e.g., `flutter_sms` for SMS, or platform channels for native messaging)
  }

  void shareOnEmail() async {
    await Share.share(linkToShare, subject: 'Check out this link');
  }
}
