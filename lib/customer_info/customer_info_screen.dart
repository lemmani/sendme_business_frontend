import 'package:flutter/material.dart';
import 'components/progress_bar.dart';
import 'components/custom_text_field.dart';
import 'components/location_field.dart';
import 'components/navigation_buttons.dart';

class CustomerInfoScreen extends StatefulWidget {
  const CustomerInfoScreen({super.key});

  @override
  State<CustomerInfoScreen> createState() => _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends State<CustomerInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _saveInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProgressBar(progress: 0.5),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enter customer info',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Let us know where we\'ll be dropping off the package.',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const CustomTextField(
                          label: 'Receiver\'s Name',
                          placeholder: 'John Doe',
                          isRequired: true,
                        ),
                        const SizedBox(height: 16),
                        const CustomTextField(
                          label: 'Delivery Contact',
                          placeholder: '+232781111',
                          isRequired: true,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16),
                        const LocationField(
                          label: 'Delivery Address',
                          placeholder: 'Tap to set the location',
                          isRequired: true,
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Checkbox(
                              value: _saveInfo,
                              onChanged: (value) {
                                setState(() {
                                  _saveInfo = value ?? false;
                                });
                              },
                            ),
                            const Text('Save customer info?'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            NavigationButtons(
              onNext: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Handle form submission
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}