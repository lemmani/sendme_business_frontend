
import 'package:flutter/material.dart';
import 'components/progress_bar.dart';
import 'components/restaurant_logo.dart';
import 'components/text_input_field.dart';
import 'components/dropdown_field.dart';
import 'components/time_picker_field.dart';
import 'components/next_button.dart';

class RestaurantProfileScreen extends StatelessWidget {
  const RestaurantProfileScreen({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 54,
                      height: 21,
                      fit: BoxFit.contain,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.wifi, size: 20),
                        SizedBox(width: 4),
                        Icon(Icons.battery_full, size: 16),
                        SizedBox(width: 4),
                        Icon(Icons.signal_cellular_alt, size: 25),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: ProgressBar(progress: 0.75),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Set up your Restaurant Profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: Color(0xFF3A353A),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RestaurantLogo(),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInputField(
                        label: 'Restaurant Name',
                        placeholder: 'Enter restaurant name',
                      ),
                      SizedBox(height: 24),
                      TextInputField(
                        label: 'Slogan (if any)',
                        placeholder: 'Enter slogan',
                        isOptional: true,
                      ),
                      SizedBox(height: 24),
                      TextInputField(
                        label: 'Contact Number',
                        placeholder: '+232 00 000000',
                        suffixText: 'Same as account',
                      ),
                      SizedBox(height: 24),
                      DropdownField(
                        label: 'Days Open',
                        value: 'All week',
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: TimePickerField(
                              label: 'Opening Time',
                              value: '00:00',
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: TimePickerField(
                              label: 'Closing Time',
                              value: '00:00',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: NextButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}