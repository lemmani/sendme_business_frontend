import 'package:flutter/material.dart';
import 'package:flutter_app/location_picker/components/action_buttons.dart';
import 'package:flutter_app/location_picker/components/location_notes.dart';
import '../location_picker/components/search_bar.dart' as custom;

class LocationPickerScreen extends StatelessWidget {
  const LocationPickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(height: 52),
                // Use the prefixed SearchBar to avoid ambiguity
                const custom.SearchBar(),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          'assets/images/map_background.png',
                          width: 430,
                          height: 932,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Positioned(
                        left: 165,
                        top: 320,
                        child: Icon(
                          Icons.location_on,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                const LocationNotes(),
                const ActionButtons(),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 12,
            child: Image.asset(
              'assets/images/status_bar.png',
              height: 21,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
