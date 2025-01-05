import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/form_section.dart';
import 'components/next_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xFFFAFAFA),
          ),
          constraints: const BoxConstraints(maxWidth: 480),
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 48),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Header(),
              SizedBox(height: 46),
              FormSection(),
              SizedBox(height: 185),
              NextButton(),
            ],
          ),
        ),
      ),
    );
  }
}