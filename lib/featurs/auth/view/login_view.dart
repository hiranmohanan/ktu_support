import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'otp_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Enter Your Phone Number'),
            TextField(
              decoration: textFieldDecoration(
                context: context,
                hintText: 'Phone Number',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OtpView()));
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
