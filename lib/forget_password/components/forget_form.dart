
import 'package:flutter/material.dart';

class ForgetForm extends StatefulWidget {
  const ForgetForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgetFormState createState() => _ForgetFormState();
}

class _ForgetFormState extends State<ForgetForm> {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Phone Number',
            style: TextStyle(
              color: Color(0xFF171717),
              fontWeight: FontWeight.w500,
              letterSpacing: -0.84,
            ),
          ),
          const SizedBox(height: 4),
          TextFormField(
            decoration: InputDecoration(
              hintText: '+2327811111',
              hintStyle: const TextStyle(color: Color(0xFFBBBBBB)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Color(0xFFC6C6C6)),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            ),
            keyboardType: TextInputType.phone,
          ),
          // const SizedBox(height: 24),
          // const Text(
          //   'Password',
          //   style: TextStyle(
          //     color: Color(0xFF171717),
          //     fontWeight: FontWeight.w500,
          //     letterSpacing: -0.84,
          //   ),
          // ),
          // const SizedBox(height: 4),
          // TextFormField(
          //   decoration: InputDecoration(
          //     hintText: '***********',
          //     hintStyle: const TextStyle(color: Color(0xFFBBBBBB)),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(14),
          //       borderSide: const BorderSide(color: Color(0xFFC6C6C6)),
          //     ),
          //     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          //   ),
          //   obscureText: true,
          // ),
          // const SizedBox(height: 7),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Row(
          //       children: [
          //         Checkbox(
          //           value: _rememberPassword,
          //           onChanged: (value) {
          //             setState(() {
          //               _rememberPassword = value!;
          //             });
          //           },
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(2),
          //           ),
          //         ),
          //         const Text(
          //           'Remember password',
          //           style: TextStyle(
          //             color: Color(0xFFA7A7A7),
          //             fontSize: 12,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //       ],
          //     ),
          //     TextButton(
          //       onPressed: () {
          //         // Handle forgot password
          //       },
          //       child: const Text(
          //         'Forgot Password?',
          //         style: TextStyle(
          //           color: Color(0xFF0560FA),
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}