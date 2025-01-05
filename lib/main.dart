import 'package:flutter/material.dart';
import '1_onboarding/welcome_screen.dart';
// import 'createAccount/create_account_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins', // Set Poppins as the default font
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        // '/home': (context) => const Home(),
    
      },
    );
  }
}
