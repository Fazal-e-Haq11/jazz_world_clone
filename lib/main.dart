 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jazz_world_clone/firebase_options.dart';
import 'package:jazz_world_clone/login_screen/login_screen.dart';
import 'package:jazz_world_clone/screens/home_screen.dart';
import 'package:jazz_world_clone/screens/splash_screen.dart';


void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
 }



 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(
           seedColor: Color(0xFFFF4081),
           brightness: Brightness.light,
         ),
         useMaterial3: true,
         textTheme: TextTheme(
           titleLarge: TextStyle(fontWeight: FontWeight.bold),
           bodyMedium: TextStyle(fontSize: 16),
         ),
         appBarTheme: AppBarTheme(
           backgroundColor: Color(0xFFFF4081),
           foregroundColor: Colors.white,
         ),
       ),
       darkTheme: ThemeData(
         colorScheme: ColorScheme.fromSeed(
           seedColor: Colors.deepPurpleAccent,
           brightness: Brightness.dark,
         ),
         useMaterial3: true,
       ),


       initialRoute: '/SplashScreen',
       routes: {
         '/SplashScreen': (context) =>  SplashScreen(),
         '/LoginScreen': (context) => const LoginScreen(),
         '/HomeScreen': (context) => const HomeScreen(),
       },


     );
   }
 }
