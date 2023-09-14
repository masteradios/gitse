import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gyansaathi/register.dart';
import 'package:gyansaathi/welcome.dart';
import 'home.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyAuTeZVdQ-3S_gwioEXbb4SCjZBY9DUta4", appId: "1:440200551159:android:1199e5542752bba52d11f2", messagingSenderId: "440200551159", projectId: "khaana-khazaana"));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context)=>Welcome(),
        '/home':(context)=>Home(),
        '/register':(context)=>Register()
      },
    );
  }
}

