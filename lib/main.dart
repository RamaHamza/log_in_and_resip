import 'package:flutter/material.dart';
import 'Screen/login/login.dart';
import 'Screen/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
Future<void> main() async {
  runApp(MyApp());

  FirebaseAuth auth = FirebaseAuth.instance;
  // Disable persistence on web platforms
  await FirebaseAuth.instance.setPersistence(Persistence.NONE);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

