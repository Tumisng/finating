import 'package:finating/screens/group_details.dart';
import 'package:finating/screens/group_details2.dart';
import 'package:finating/screens/group_share_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GroupDetails2Page(),
      // routes: {
      //   '/login': (context) => const LoginPage(),
      //   '/otpverification':(context) => const OtpVerficationPage(),
      //   '/otpcode': (context) => const OtpCodePage(),
      //   '/otpsuccess':(context) => const OtpSuccessPage(),
      //   '/home':(context) =>  const HomePage(),
      //   '/groupcreation':(context) => const GroupAdditionPage(),
      //   '/groupsuccess':(context) => const GroupCreationSuccessPage(),

      // },
    );
  }
}
