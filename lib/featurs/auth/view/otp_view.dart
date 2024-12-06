import 'package:flutter/material.dart';
import 'package:ktu_support/featurs/auth/view/auth_register_view.dart';

import 'package:sizer/sizer.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Enter OTP'),
            SizedBox(
              height: 80,
              width: 100.w,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return otpFieldSingle();
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthRegisterView()));
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
      height: 10.w,
      width: 10.w,
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Center(
        child: const TextField(
          maxLength: 1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration:
              InputDecoration(counterText: '', border: InputBorder.none),
        ),
      ),
    );
  }
}
