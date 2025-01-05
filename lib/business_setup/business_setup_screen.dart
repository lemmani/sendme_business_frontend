
import 'package:flutter/material.dart';
import 'components/welcome_header.dart';
import 'components/business_type_selector.dart';
import 'components/navigation_buttons.dart';

class BusinessSetupScreen extends StatelessWidget {
  const BusinessSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      WelcomeHeader(),
                      SizedBox(height: 32),
                      BusinessTypeSelector(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: NavigationButtons(),
            ),
          ],
        ),
      ),
    );
  }
}