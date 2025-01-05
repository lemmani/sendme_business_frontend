import 'package:flutter/material.dart';
import '../pickup_address_res/components/progress_bar_res.dart';
import '../pickup_address_res/components/address_input_res.dart';
import '../pickup_address_res/components/navigation_buttons_res.dart';
import '../pickup_address_res/components/custom_icons_res.dart';

class PickupAddressResScreen extends StatelessWidget {
  const PickupAddressResScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xFFFAFAFA),
        ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconsRes.logo,
                  Row(
                    children: [
                      CustomIconsRes.wifi,
                      SizedBox(width: 4),
                      CustomIconsRes.cellular,
                      SizedBox(width: 4),
                      CustomIconsRes.battery,
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProgressBarRes(),
                      SizedBox(height: 20),
                      Text(
                        'Enter Restaurant Location',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3A353A),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Let us know where we\'ll be picking up the food from.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D7D7D),
                          letterSpacing: -0.42,
                        ),
                      ),
                      SizedBox(height: 32),
                      AddressInputRes(),
                    ],
                  ),
                ),
              ),
            ),
            NavigationButtonsRes(),
            SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}
