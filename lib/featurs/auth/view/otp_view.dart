import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ktu_support/featurs/home/view/home_view.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Enter OTP'),
            SizedBox(
              height: 80,
              width: width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return otpFieldSingle();
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  otpFieldSingle() {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const TextField(
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
        ),
      ),
    );
  }
}
