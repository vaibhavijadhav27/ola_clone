import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ola_clone/screens/Login.dart';
import 'package:ola_clone/screens/LoginPhoneNumber.dart';
import 'package:ola_clone/screens/Account.dart';
import 'package:ola_clone/screens/AccountDetails.dart';
import 'package:ola_clone/screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: "/start",
      routes: {
        "/start": (context) => Login(),
        "/LoginPhoneNumber": (context) => LoginPhoneNumber(),
        "/Home": (context) => HomeScreen(),
        "/Account": (context) => Account(),
        "/AccountDetails": (context) => AccountDetails(),
      },
      title: 'Ola Clone',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      
      ); //MaterialApp
  }
}
