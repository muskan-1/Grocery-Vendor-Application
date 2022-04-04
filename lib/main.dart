import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_vendor_app/screens/auth_screen.dart';
import 'package:grocery_vendor_app/screens/home_screen.dart';
import 'package:grocery_vendor_app/screens/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF84c225),
        fontFamily: 'Lato'
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),  
        AuthScreen.id:(context)=>AuthScreen(), 
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}