
import 'package:flutter/material.dart';
import 'components/progress_bar_next.dart';
import 'components/restaurant_logo_next.dart';
import 'components/text_input_field_next.dart';
import 'components/dropdown_field_next.dart';
import 'components/time_picker_next.dart';
import 'components/next_button_next.dart';

class RestaurantProfileScreenNext extends StatelessWidget {
  const RestaurantProfileScreenNext({super.key});

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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              ProgressBarNext(progress: 0.75),
              Padding(
                padding: EdgeInsets.all(20),
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
              RestaurantLogoNext(),
              TextInputFieldNext(
                label: 'Restaurant Name',
                placeholder: 'Enter restaurant name',
              ),
              TextInputFieldNext(
                label: 'Slogan (if any)',
                placeholder: 'Enter slogan',
                optional: true,
              ),
              TextInputFieldNext(
                label: 'Contact Number',
                value: '+232 00 000000',
                readOnly: true,
                trailing: Text(
                  'Same as account',
                  style: TextStyle(
                    color: Color(0xFFF49321),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ), placeholder: '',
              ),
              DropdownFieldNext(
                label: 'Days Open',
                value: 'All week',
                items: ['All week', 'Weekdays', 'Weekends'],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TimePickerNext(
                      label: 'Opening Time',
                      initialTime: TimeOfDay(hour: 0, minute: 0),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TimePickerNext(
                      label: 'Closing Time',
                      initialTime: TimeOfDay(hour: 0, minute: 0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              NextButtonNext(),
            ],
          ),
        ),
      ),
    );
  }
}