import 'package:flutter/material.dart';
import '../widgets/image_upload_banner.dart';
import '../widgets/image_upload_circle.dart';
import '../widgets/custom_text_field.dart';

class EditStorefrontScreen extends StatefulWidget {
  const EditStorefrontScreen({super.key});

  @override
  State<EditStorefrontScreen> createState() => _EditStorefrontScreenState();
}

class _EditStorefrontScreenState extends State<EditStorefrontScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contactController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void dispose() {
    _contactController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Edit Storefront Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Form
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Banner Image',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const ImageUploadBanner(),
                        const SizedBox(height: 24),
                        const Text(
                          'Business Logo',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Center(child: ImageUploadCircle()),
                        const SizedBox(height: 24),
                        CustomTextField(
                          label: 'Contact Number',
                          controller: _contactController,
                          placeholder: '+232 00 000000',
                          suffix: TextButton(
                            onPressed: () {
                              // Handle same as account
                            },
                            child: const Text(
                              'Same as account',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          label: 'Address',
                          controller: _addressController,
                          placeholder: '55 Campbell Street',
                          suffix: TextButton(
                            onPressed: () {
                              // Handle same as account
                            },
                            child: const Text(
                              'Same as account',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Bottom Buttons
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Handle save settings
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Save Settings',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}