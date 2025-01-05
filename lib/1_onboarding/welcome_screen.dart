
import 'package:flutter/material.dart';
import 'components/welcome_buttons.dart';
import 'components/welcome_content.dart';



class WelcomeScreen extends StatelessWidget {
  
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              Expanded(child: WelcomeContent()),
              WelcomeButtons(),
            ],
          ),
        ),
      ),
    );
  }
}