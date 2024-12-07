import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/main_screen.dart';
import 'screens/specialist_finder_screen.dart';
import 'screens/specialist_profile_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/map_screen.dart';
import 'screens/review_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Care Nest',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/main': (context) => MainScreen(),
        '/specialistFinder': (context) => SpecialistFinderScreen(),
        // '/specialistProfile': (context) => SpecialistProfileScreen(),
        // '/chat': (context) => ChatScreen(),
        // '/map': (context) => MapScreen(),
        // '/review': (context) => ReviewScreen(),
      },
    );
  }
}
