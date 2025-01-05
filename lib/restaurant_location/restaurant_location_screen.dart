import 'package:flutter/material.dart';
import 'components/progress_bar.dart';
import 'components/location_input.dart';
import 'components/navigation_buttons.dart';

class RestaurantLocationScreen extends StatelessWidget {
  const RestaurantLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xFFFAFAFA),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/d92fb73f9848106f303dfeababeb45dc8bb8c80b6d7bfda91df9ff2f6422e824?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                    width: 54,
                    height: 21,
                    fit: BoxFit.contain,
                  ),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/eddba0f560510bf24baaba32528c7b47b6161996f554b9d1e5b554ab98117b52?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                        width: 20,
                        height: 14,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 4),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/5d80abc9b33af243036e5ce27cacffc6beaa96dc73d44de3effa12ac9f333536?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                        width: 16,
                        height: 14,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 4),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/739a9dd4c52677df52a403aba2600ba8193dba21035733ddb7a95640983c68d3?placeholderIfAbsent=true&apiKey=766a6a0e49b94297b5a856693558a3ad',
                        width: 25,
                        height: 14,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  ProgressBar(),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Enter restaurant location',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Color(0xFF3A353A),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  LocationInput(),
                  Spacer(),
                  NavigationButtons(),
                ],
              ),
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 5,
                    offset: const Offset(0, -1),
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
