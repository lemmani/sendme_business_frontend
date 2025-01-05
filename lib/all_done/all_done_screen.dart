
import 'package:flutter/material.dart';
import '../all_done/components/progress_bar.dart';
import '../all_done/components/success_icon.dart';
import '../all_done/components/dashboard_button.dart';

class AllDoneScreen extends StatelessWidget {
  const AllDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xFFFAFAFA),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20), // Padding from the top
            ProgressBar(),
            Spacer(),
            SuccessIcon(),
            Spacer(),
            DashboardButton(),
            SizedBox(height: 20), // Padding from the bottom
          ],
        ),
      ),
    );
  }
}
