import 'package:flutter/material.dart';
import '../pickup_address/components/progress_bar.dart';
import '../pickup_address/components/address_input.dart';
import '../pickup_address/components/navigation_buttons.dart';

class PickupAddressScreen extends StatelessWidget {
  const PickupAddressScreen({Key? key}) : super(key: key);

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
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     CustomIcons.logo,
              //     Row(
              //       children: [
              //         CustomIcons.wifi,
              //         SizedBox(width: 4),
              //         CustomIcons.cellular,
              //         SizedBox(width: 4),
              //         CustomIcons.battery,
              //       ],
              //     ),
              //   ],
              // ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProgressBar(),
                      SizedBox(height: 20),
                      Text(
                        'Enter pickup address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3A353A),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Let us know where we\'ll be picking up the packages from.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D7D7D),
                          letterSpacing: -0.42,
                        ),
                      ),
                      SizedBox(height: 32),
                      AddressInput(),
                    ],
                  ),
                ),
              ),
            ),
            NavigationButtons(),
            SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}
